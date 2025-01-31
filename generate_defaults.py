import sys
import re

def parse_plist(input_file, output_file):
    with open(input_file, "r", errors="ignore") as infile:
        raw_content = infile.readlines()

    domains = set()
    domain_key_pairs = []
    current_domain = None

    for line in raw_content:
        line = line.strip()

        # Detect a new domain (whether it opens a block or not)
        domain_match = re.match(r'^"?(com\.apple\.[a-zA-Z0-9._-]+|NSGlobalDomain)"?\s=', line)
        if domain_match:
            current_domain = domain_match.group(1).strip('"')
            domains.add(current_domain)
            continue

        # Detect closing of a domain
        if line == "};":
            current_domain = None
            continue

        # Ensure a valid domain is tracked
        if current_domain is None:
            continue

        # Detect key-value pairs under a domain
        key_value_match = re.match(r'^\s*"?(.*?)"?\s=\s(.*);$', line)
        if key_value_match:
            key, value = key_value_match.groups()
            key = key.strip('"')
            domain_key_pairs.append((current_domain, key, value))

    # Generate shell script content
    script_lines = [
        "#!/usr/bin/env bash",
        "",
        "# macOS Preferences Configuration",
        "# This script sets system preferences using the 'defaults write' command.",
        f"# Generated automatically from {input_file}",
        "",
    ]

    for domain, key, value in domain_key_pairs:
        # Determine value type and format accordingly
        if value.lower() in ["true", "false"]:
            value_type = "-bool"
            formatted_value = value.lower()
        elif re.match(r'^\d+(\.\d+)?$', value):  # Integer or float
            value_type = "-float" if "." in value else "-int"
            formatted_value = value  # Ensure numbers are not quoted
        else:
            value = value.strip('"')
            value_type = "-string"
            formatted_value = f'"{value}"'  # Ensure strings are quoted

        # Generate defaults write command (domains and keys are unquoted, only strings are quoted)
        script_lines.append(f'defaults write {domain} {key} {value_type} {formatted_value}')

    # Write to the output shell script
    with open(output_file, "w") as outfile:
        outfile.write("\n".join(script_lines) + "\n")

    print(f"Shell script generated: {output_file}")

# Ensure the script is run with an input file argument
if len(sys.argv) != 3:
    print("Usage: python3 generate_defaults.py <input_plist_file> <output_shell_script>")
    sys.exit(1)

# Run the function with command-line arguments
parse_plist(sys.argv[1], sys.argv[2])
