import sys
import re

# Define categories for grouping settings
categories = {
    "Finder Tweaks": ["com.apple.finder"],
    "Dock & Mission Control": ["com.apple.dock"],
    "Trackpad & Mouse": ["com.apple.AppleMultitouchTrackpad", "com.apple.HIToolbox"],
    "Keyboard Behavior": ["NSGlobalDomain", "com.apple.HIToolbox"],
    "System UI & Accessibility": ["NSGlobalDomain", "com.apple.universalaccess"],
    "Screenshots": ["com.apple.screencapture"],
    "Menu Bar & Clock": ["com.apple.menuextra.clock"],
    "Other Useful Tweaks": []
}

def group_defaults_script(input_script):
    output_script = "macos_defaults_grouped.sh"

    # Read the input script
    with open(input_script, "r", errors="ignore") as infile:
        lines = infile.readlines()

    # Prepare grouped script with better descriptions
    grouped_script_lines = [
        "#!/usr/bin/env bash",
        "",
        "# macOS Preferences Configuration",
        "# This script applies various macOS tweaks for a better user experience.",
        "# It is structured into sections to make it easier to understand and modify.",
        "",
    ]

    # Temp storage for categorized commands
    categorized_commands = {category: [] for category in categories}

    # Process each line
    for line in lines:
        line = line.strip()

        # Skip empty lines and comments
        if not line or line.startswith("#"):
            continue

        # Extract domain from the command
        match = re.match(r'^defaults write ([^ ]+) ', line)
        if match:
            domain = match.group(1)
            for category, domains in categories.items():
                if domain in domains or category == "Other Useful Tweaks":
                    categorized_commands[category].append(line)
                    break

    # Manually write detailed comments and group settings
    for category, commands in categorized_commands.items():
        if not commands:
            continue

        grouped_script_lines.append("")
        grouped_script_lines.append(f"# ==================== {category} ====================")
        
        if category == "Finder Tweaks":
            grouped_script_lines.append("# Customize Finder for a better file browsing experience.")
            grouped_script_lines.append("# Includes showing hidden files, file extensions, and improved search behavior.")
        elif category == "Dock & Mission Control":
            grouped_script_lines.append("# Adjust the Dock and Mission Control settings for a cleaner, faster experience.")
            grouped_script_lines.append("# Includes auto-hiding, reducing animations, and setting up hot corners.")
        elif category == "Trackpad & Mouse":
            grouped_script_lines.append("# Tune trackpad and mouse behavior for a smoother and more precise interaction.")
            grouped_script_lines.append("# Includes tap-to-click, scroll direction, and tracking speed.")
        elif category == "Keyboard Behavior":
            grouped_script_lines.append("# Improve typing speed and key responsiveness.")
            grouped_script_lines.append("# Adjusts key repeat rates and disables press-and-hold for faster input.")
        elif category == "System UI & Accessibility":
            grouped_script_lines.append("# Enhance macOS UI elements and improve accessibility features.")
            grouped_script_lines.append("# Includes dark mode, transparency settings, and contrast adjustments.")
        elif category == "Screenshots":
            grouped_script_lines.append("# Configure how screenshots are taken and saved.")
            grouped_script_lines.append("# Includes default save location, file format, and whether shadows are included.")
        elif category == "Menu Bar & Clock":
            grouped_script_lines.append("# Adjust menu bar settings including the clock format and visibility options.")
        elif category == "Other Useful Tweaks":
            grouped_script_lines.append("# Additional useful macOS tweaks that don't fit into a specific category.")

        grouped_script_lines.extend(commands)

    # Write the improved, structured script
    with open(output_script, "w") as outfile:
        outfile.write("\n".join(grouped_script_lines) + "\n")

    print(f"Grouped shell script saved to: {output_script}")

# Ensure the script is run with an input file argument
if len(sys.argv) != 2:
    print("Usage: python3 group_defaults.py <input_shell_script>")
    sys.exit(1)

# Run the function with the provided input file
group_defaults_script(sys.argv[1])