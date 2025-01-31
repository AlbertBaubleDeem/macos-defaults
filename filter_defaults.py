import sys
import re

# Define important macOS domains to keep
important_domains = {
    "NSGlobalDomain",  # System-wide settings
    "com.apple.finder",  # Finder tweaks
    "com.apple.dock",  # Dock & Mission Control
    "com.apple.universalaccess",  # Accessibility & UI tweaks
    "com.apple.screencapture",  # Screenshot settings
    "com.apple.HIToolbox",  # Keyboard settings & remapping
    "com.apple.AppleMultitouchTrackpad",  # Trackpad settings
    "com.apple.menuextra.clock",  # Menu bar clock format
}

# Define important keys that should always be included (keyboard remapping, UI behavior)
important_keys = {
    "KeyRepeat", "InitialKeyRepeat", "AppleShowAllFiles", "AppleShowAllExtensions",
    "com.apple.springing.enabled", "com.apple.springing.delay", "com.apple.mouse.tapBehavior",
    "com.apple.trackpad.scaling", "com.apple.mouse.scaling", "AppleInterfaceStyleSwitchesAutomatically",
    "com.apple.swipescrolldirection", "ApplePressAndHoldEnabled", "ReduceMotion",
}

def filter_defaults_script(input_script, output_script):
    # Read input script
    with open(input_script, "r", errors="ignore") as infile:
        script_lines = infile.readlines()

    filtered_lines = []
    for line in script_lines:
        # Match defaults write commands
        match = re.match(r'^defaults write\s+([^\s]+)\s+([^\s]+)', line)
        if match:
            domain, key = match.groups()
            # Keep only important settings
            if domain in important_domains or key in important_keys:
                filtered_lines.append(line)
        else:
            # Preserve non-command lines (headers, comments, etc.)
            filtered_lines.append(line)

    # Write to the output script
    with open(output_script, "w") as outfile:
        outfile.write("".join(filtered_lines))

    print(f"Filtered shell script saved to: {output_script}")

# Ensure correct arguments
if len(sys.argv) != 3:
    print("Usage: python3 filter_defaults.py <input_shell_script> <output_shell_script>")
    sys.exit(1)

# Run filtering
filter_defaults_script(sys.argv[1], sys.argv[2])
