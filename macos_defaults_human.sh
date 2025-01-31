#!/usr/bin/env bash

# macOS Preferences Configuration
# This script applies various macOS tweaks for a better user experience.
# It is structured into sections to make it easier to understand and modify.

# This configuration applies to the latest version of macOS (currently 15.2),
# and sets up preferences and configurations for all the built-in services and
# apps. Third-party app config should be done elsewhere.
#
# Options:
#   --no-restart: Don't restart any apps or services after running the script.
#
# If you want to figure out what default needs changing, do the following:
#
#   1. `cd /tmp`
#   2. Store current defaults in file: `defaults read > before`
#   3. Make a change to your system.
#   4. Store new defaults in file: `defaults read > after`
#   5. Diff the files: `diff before after`
#
# @see: https://git.herrbischoff.com/awesome-macos-command-line/about/
# @see: https://macos-defaults.com/
# @see: https://ss64.com/mac/syntax-defaults.html
# @see: https://developer.apple.com/documentation/devicemanagement/systempreferences
#
# @inspired by https://github.com/geerlingguy/dotfiles/blob/master/.osx

# Warn that some commands will not be run if the script is not run as root.
if [[ $EUID -ne 0 ]]; then
  RUN_AS_ROOT=false
  printf "Certain commands will not be run without sudo privileges. To run as root, run the same command prepended with 'sudo', for example: $ sudo $0\n\n" | fold -s -w 80
else
  RUN_AS_ROOT=true
  # Update existing `sudo` timestamp until `.osx` has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
fi

# ==================== General UI/UX ====================

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Restart automatically if the computer freezes
if [[ "$RUN_AS_ROOT" = true ]]; then
  systemsetup -setrestartfreeze on
fi

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# ==================== Finder Tweaks ====================
# Customize Finder for a better file browsing experience.
# Includes showing hidden files, file extensions, and improved search behavior.

# Show all hidden files in Finder 
defaults write com.apple.finder AppleShowAllFiles -string "yes"

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0.1

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Set the size of icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist

# Use column view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `Nlsv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Show the ~/Library folder
chflags nohidden ~/Library

# Add a Quit option to Finder
defaults write com.apple.finder QuitMenuItem -bool true

# ==================== Bulk Rename Settings ====================
# Configure Finder’s built-in bulk renaming tool behavior.
defaults write com.apple.finder BulkRenameAddNumberTo -int 0         # Disable automatic number addition
defaults write com.apple.finder BulkRenameAddTextText -string ""     # No default text to be added
defaults write com.apple.finder BulkRenameAddTextTo -int 0           # No additional text to file names
defaults write com.apple.finder BulkRenameFindText -string "Untitled" # Default text to find for renaming
defaults write com.apple.finder BulkRenameName -string "File "       # Default base name when renaming
defaults write com.apple.finder BulkRenamePlaceNumberAt -int 0       # Place number at the beginning
defaults write com.apple.finder BulkRenameReplaceText -string "1.0_version_" # Default replacement text
defaults write com.apple.finder BulkRenameStartIndex -int 1          # Start numbering from 1

# ==================== File Size and View Style Settings ====================
# Configure how Finder handles file sizes and list views.
defaults write com.apple.finder calculateAllSizes -int 0  # Disable calculating all folder sizes for performance
defaults write com.apple.finder CustomViewStyleVersion -int 1  # Default view style version

# ==================== Finder Column Visibility and Order ====================
# Configure the visible columns, their width, and sorting preferences.

# Default sorting by name in ascending order
defaults write com.apple.finder sortColumn -string "name"
defaults write com.apple.finder ascending -int 1

# Show "Name" column
defaults write com.apple.finder identifier -string "name"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 168

# Show "Date Modified" column
defaults write com.apple.finder identifier -string "dateModified"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 177
defaults write com.apple.finder ascending -int 0  # Sort in descending order

# Hide "Date Created" column
defaults write com.apple.finder identifier -string "dateCreated"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 177

# Show "Size" column
defaults write com.apple.finder identifier -string "size"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 97
defaults write com.apple.finder ascending -int 1  # Sort in ascending order

# Show "Kind" column
defaults write com.apple.finder identifier -string "kind"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 115
defaults write com.apple.finder ascending -int 1  # Sort in ascending order

# Hide "Comments" column
defaults write com.apple.finder identifier -string "comments"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 300

# Hide cloud-sharing-related columns
defaults write com.apple.finder identifier -string "shareOwner"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 210

defaults write com.apple.finder identifier -string "shareLastEditor"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 210

defaults write com.apple.finder identifier -string "invitationStatus"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 210

# ==================== Finder Icon and Text Size ====================
# Set default icon and text sizes for Finder views.
defaults write com.apple.finder iconSize -int 16       # Set small icon size
defaults write com.apple.finder showIconPreview -int 1 # Enable icon preview
defaults write com.apple.finder textSize -int 13       # Set text size in Finder views

# ==================== Miscellaneous Finder Settings ====================
defaults write com.apple.finder useRelativeDates -int 1  # Use relative dates (e.g., "Yesterday" instead of the full date)
defaults write com.apple.finder viewOptionsVersion -int 1  # Internal versioning for view settings


##################################################################
# ==================== Dock & Mission Control ====================
# Adjust the Dock and Mission Control settings for a cleaner, faster experience.
# Includes auto-hiding, reducing animations, and setting up hot corners.

# ==================== Dock Behavior ====================
defaults write com.apple.dock autohide -int 1  # Automatically hide the Dock when not in use
defaults write com.apple.dock largesize -int 128  # Maximum Dock icon size when magnified

# ==================== Dock System Metadata ====================
# These settings store system-related metadata and preferences.
# Some of these values are dynamically set by macOS and not manually configurable.

defaults write com.apple.dock lastShowIndicatorTime -string "757682631.718197"  # Last time an app indicator was shown
defaults write com.apple.dock loc -string "en_GB:(null)"  # System localization setting for the Dock
defaults write com.apple.dock mod-count -int 7780  # Number of modifications made to the Dock settings
defaults write com.apple.dock GUID -int 2707065211  # Unique identifier for Dock settings

# ==================== Dock Launchpad Settings ====================
defaults write com.apple.dock book -string "{length = 584, bytes = 0x626f6f6b 48020000 00000410 30000000 ... 04000000 00000000 }"
# Stores information related to Launchpad settings (binary data, not manually editable).

defaults write com.apple.dock bundle-identifier -string "com.apple.launchpad.launcher"  
# Identifies the Launchpad application in the Dock.

# ==================== Dock Extra Features ====================
defaults write com.apple.dock dock-extra -int 0  # Disables additional Dock features (such as persistent extra icons)
defaults write com.apple.dock _CFURLString -string "file:///System/Applications/Launchpad.app/"
# Stores the file path for the Launchpad application in the Dock.

defaults write com.apple.dock _CFURLStringType -int 15  # Internal macOS setting for file URL types in the Dock.


################################################################
# ==================== Trackpad & Mouse ====================
# Tune trackpad and mouse behavior for a smoother and more precise interaction.
# Includes tap-to-click, scroll direction, and tracking speed.

# ==================== Trackpad Basic Settings ====================
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1  # Enable tap-to-click
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0  # Disable three-finger drag
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0  # No drag lock (prevents unintentional drags)
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1  # Enable haptic feedback on force clicks
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -int 0  # Enable Force Touch
defaults write com.apple.AppleMultitouchTrackpad HandResting -int 1  # Enable palm detection to avoid accidental touches

# ==================== Trackpad Gesture Settings ====================
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 0  # Disable right-click by tapping with two fingers
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 0  # Disable three-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1  # Enable pinch-to-zoom
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1  # Enable rotation gestures
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -int 1  # Enable scrolling
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1  # Enable horizontal scrolling
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -int 1  # Enable momentum scrolling

# ==================== Advanced Trackpad Gestures ====================
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2  # Enable four-finger vertical swipe
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2  # Enable four-finger horizontal swipe
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2  # Enable four-finger pinch
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2  # Enable five-finger pinch
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2  # Enable three-finger horizontal swipe
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2  # Enable three-finger vertical swipe
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0  # Disable three-finger tap for look-up
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 1  # Enable two-finger double-tap
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3  # Enable two-finger swipe from right edge for notifications

# ==================== USB Mouse & Trackpad Behavior ====================
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0  # Keep trackpad enabled when using an external mouse

# ==================== System Configuration ====================
defaults write com.apple.AppleMultitouchTrackpad UserPreferences -int 1  # Ensure trackpad preferences are stored
defaults write com.apple.AppleMultitouchTrackpad version -int 12  # Version identifier for trackpad settings

# ==================== Keyboard Layout & Input Methods ====================
# Customize the keyboard layout and input method settings.

# Set default keyboard layout to ABC
defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID -string "com.apple.keylayout.ABC"

# Enable Apple Dictation
defaults write com.apple.HIToolbox AppleDictationAutoEnable -int 1  

# Configure primary keyboard layouts
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 30778  # Czech-QWERTY layout
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Czech-QWERTY"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252  # ABC layout
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"

# Additional input methods
defaults write com.apple.HIToolbox KeyboardLayout ID -string "-2276"
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Mongolian-Cyrillic"

# Enable input methods for special characters and emojis
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.EmojiFunctionRowItem"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"

# Enable press-and-hold for special characters
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.PressAndHold"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"

# Set Function Key behavior
defaults write com.apple.HIToolbox AppleFnUsageType -int 3  # Use function keys as standard keys

# Track last input source update
defaults write com.apple.HIToolbox AppleInputSourceUpdateTime -string "2025-01-09 14:37:30 +0000"
