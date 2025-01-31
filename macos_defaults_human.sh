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
# @inspired by: https://github.com/geerlingguy/dotfiles/blob/master/.osx
#               https://gist.github.com/ChristopherA/98628f8cd00c94f11ee6035d53b0d3c6

# Warn that some commands will not be run if the script is not run as root.
if [[ $EUID -ne 0 ]]; then
  RUN_AS_ROOT=false
  printf "Certain commands will not be run without sudo privileges. To run as root, run the same command prepended with 'sudo', for example: $ sudo $0\n\n" | fold -s -w 80
else
  RUN_AS_ROOT=true
  # Update existing `sudo` timestamp until `.osx` has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
fi

# ==================== Test Terminal For Full disk access ====================

# Test if Terminal has Full Disk Access, and if it doesn't, prompt user to set		
# it and start over.		
# ? A number of preferences now require Terminal.app to have Full		
# ? Disk Access, in particular Safari.app.		
# ? https://lapcatsoftware.com/articles/containers.html		
# TODO: Wrap with $osx_product_version tests		

printf "Testing for Full Disk Access:\n\n"		
errstr=$( /bin/ls /Users/admin/Library/Containers/com.apple.Safari 3>&1 1>&2 2>&3 3>&- )		
# ? Full disk access has only been in since Mojave, but which files were protected first?		
# TODO: Research if there is an older file to test. 		

if [[ $errstr == *"Operation not permitted" ]]; then		
   printf "Terminal.app needs Full Disk Access permission\n"		

    # Prompt user to give Terminal Full Disk Access		
    # ! This worked earlier in VMware Montery, but failed on M1 MacBook Pro (14-inch 2021)		
    # TODO: Investigate		

    osascript   -e "tell application \"System Preferences\" to activate " \
                -e "tell application \"System Preferences\" to reveal anchor \"Privacy_AllFiles\" of pane id \"com.apple.preference.security\" " \
                -e "display dialog \"Before continuing:\n\nUnlock and check the box next to Terminal to give it full disk access.\n\nThen quit Terminal and run this script again.\" buttons {\"OK\"} default button 1 with icon caution "
    exit # as we can't proceed until Terminal has been granted full Disk Access
else
   printf "Terminal.app has permission to continue\n"
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

# Disable smart quotes as they're annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they're annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable Photos.app from opening when a device or card is plugged in:
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

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

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show the /Volumes folder
sudo chflags nohidden /Volumes

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

# ==================== Finder Icon and Text Size ====================
# # TODO: Find if it works under macOS Sequia
# # Set default icon and text sizes for Finder views.
# defaults write com.apple.finder iconSize -int 16       # Set small icon size
# defaults write com.apple.finder showIconPreview -int 1 # Enable icon preview
# defaults write com.apple.finder textSize -int 13       # Set text size in Finder views

# ==================== Miscellaneous Finder Settings ====================
defaults write com.apple.finder useRelativeDates -int 1  # Use relative dates (e.g., "Yesterday" instead of the full date)
defaults write com.apple.finder viewOptionsVersion -int 1  # Internal versioning for view settings


##################################################################
# ==================== Dock & Mission Control ====================
# Adjust the Dock and Mission Control settings for a cleaner, faster experience.
# Includes auto-hiding, reducing animations, and setting up hot corners.

# ==================== Dock Behavior ====================
defaults write com.apple.dock autohide -int 1  # Automatically hide the Dock when not in use
defaults write com.apple.dock tilesize -int 30 # Set the icon size of Dock items
defaults write com.apple.dock largesize -int 40  # Maximum Dock icon size when magnified
defaults write com.apple.dock expose-animation-duration -float 0.15 # Speed up Mission Control animations
defaults write com.apple.dock showhidden -bool true # Make Dock icons of hidden applications translucent

# ==================== Dock System Metadata ====================
# These settings store system-related metadata and preferences.
# Some of these values are dynamically set by macOS and not manually configurable.

defaults write com.apple.dock lastShowIndicatorTime -string "757682631.718197"  # Last time an app indicator was shown
defaults write com.apple.dock loc -string "en_GB:(null)"  # System localization setting for the Dock
defaults write com.apple.dock mod-count -int 7780  # Number of modifications made to the Dock settings
defaults write com.apple.dock GUID -int 2707065211  # Unique identifier for Dock settings

# ==================== Dock Extra Features ====================
defaults write com.apple.dock dock-extra -int 0  # Disables additional Dock features (such as persistent extra icons)

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

###########################################################################
# ==================== Keyboard Layout & Input Methods ====================
# Customize the keyboard layout and input method settings.

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Enable Apple Dictation
defaults write com.apple.HIToolbox AppleDictationAutoEnable -int 1  

# Configure primary keyboard layouts

# ABC layout
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>252</integer><key>KeyboardLayout Name</key><string>ABC</string></dict>'
# Czech-QWERTY layout
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>30778</integer><key>KeyboardLayout Name</key><string>Czech-QWERTY</string></dict>'
# Mongolian layout
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>2276</integer><key>KeyboardLayout Name</key><string>Mongolian-Cyrillic</string></dict>'

# Set default keyboard layout to ABC
defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID -string "com.apple.keylayout.ABC"

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate, and make it happen more quickly.
# (The KeyRepeat option requires logging out and back in to take effect.)
defaults write NSGlobalDomain InitialKeyRepeat -int 20
defaults write NSGlobalDomain KeyRepeat -int 1

# Set Function Key behavior
defaults write com.apple.HIToolbox AppleFnUsageType -int 3  # Use function keys as standard keys

# Track last input source update
defaults write com.apple.HIToolbox AppleInputSourceUpdateTime -string "2025-01-09 14:37:30 +0000"

# Change keymapping and make persistent with a LaunchAgent

PLIST_PATH="$HOME/Library/LaunchAgents/com.local.KeyRemapping.plist"
mkdir -p "$HOME/Library/LaunchAgents"

cat >"$PLIST_PATH" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.local.KeyRemapping.plist</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/bin/hidutil</string>
        <string>property</string>
        <string>--set</string>
        <string>{"UserKeyMapping":[
          {
            "HIDKeyboardModifierMappingSrc":0x700000029,
            "HIDKeyboardModifierMappingDst":0x700000039
          },
          {
            "HIDKeyboardModifierMappingSrc":0x700000039,
            "HIDKeyboardModifierMappingDst":0x700000029
          }
        ]}</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
</dict>
</plist>
EOF

echo "LaunchAgent plist created at $PLIST_PATH"

# Load the plist immediately
launchctl load "$PLIST_PATH"
echo "LaunchAgent loaded."

##################################################
# ==================== Screen ====================

# Save screenshots to Downloads folder.
mkdir -p ${HOME}/Pictures/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

#####################################################
# ==================== Spotlight ====================

if [[ "$RUN_AS_ROOT" = true ]]; then
  # Disable Spotlight indexing for any volume that gets mounted and has not yet
  # been indexed before.
  # Use `sudo mdutil -i off "/Volumes/foo"` to stop indexing any volume.
  sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"

  # Restart spotlight
  killall mds > /dev/null 2>&1
fi

#####################################################
# ==================== App Store ====================

# Disable in-app rating requests from apps downloaded from the App Store.
defaults write com.apple.appstore InAppReviewEnabled -int 0

##############################################################################
# ==================== Kill/restart affected applications ====================

# Restart affected applications if `--no-restart` flag is not present.
if [[ ! ($* == *--no-restart*) ]]; then
  for app in "cfprefsd" "Dock" "Finder" "SystemUIServer" "Terminal"; do
    killall "${app}" > /dev/null 2>&1
  done
fi

printf "Please log out and log back in to make all settings take effect.\n"