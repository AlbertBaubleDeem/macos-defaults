#!/usr/bin/env bash

# macOS Preferences Configuration
# This script sets system preferences using the 'defaults write' command.
# Each setting is commented with an explanation.

#!/usr/bin/env bash

# macOS Preferences Configuration
# This script sets system preferences using the 'defaults write' command.
# Generated automatically from macos_preferences.plist

# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadHandResting -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad UserPreferences -int 1
# com.apple.AppleMultitouchTrackpad: Trackpad gestures & behavior.
defaults write com.apple.AppleMultitouchTrackpad version -int 12
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID -string "com.apple.keylayout.ABC"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox AppleDictationAutoEnable -int 1
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -int 30778
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Czech-QWERTY"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.CharacterPaletteIM"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.PressAndHold"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.ironwood"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -string "-2276"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Mongolian-Cyrillic"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.EmojiFunctionRowItem"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox AppleFnUsageType -int 3
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -int 30778
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Czech-QWERTY"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -string "-2276"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Mongolian-Cyrillic"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox AppleInputSourceUpdateTime -string "2025-01-09 14:37:30 +0000"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.PressAndHold"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.EmojiFunctionRowItem"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252
# com.apple.HIToolbox: Keyboard settings & remapping.
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock autohide -int 1
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock largesize -int 128
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock lastShowIndicatorTime -string "757682631.718197"
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock loc -string "en_GB:(null)"
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock mod-count -int 7780
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock GUID -int 2707065211
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock book -string "{length = 584, bytes = 0x626f6f6b 48020000 00000410 30000000 ... 04000000 00000000 }"
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock bundle-identifier -string "com.apple.launchpad.launcher"
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock dock-extra -int 0
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock _CFURLString -string "file:///System/Applications/Launchpad.app/"
# com.apple.dock: Dock & Mission Control - animations, auto-hide, etc.
defaults write com.apple.dock _CFURLStringType -int 15
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder AppleShowAllFiles -string "yes"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameAddNumberTo -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameAddTextText -string ""
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameAddTextTo -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameFindText -string "Untitled"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameName -string "File "
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenamePlaceNumberAt -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameReplaceText -string "1.0_version_"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder BulkRenameStartIndex -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder CustomViewStyleVersion -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder calculateAllSizes -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "name"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 168
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "ubiquity"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 35
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "dateModified"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 177
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "dateCreated"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 177
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "size"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 97
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "kind"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 115
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "label"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 100
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "version"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 75
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "comments"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 300
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "dateLastOpened"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 177
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "dateAdded"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 181
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "shareOwner"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 210
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "shareLastEditor"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 210
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder ascending -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder identifier -string "invitationStatus"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder visible -int 0
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder width -int 210
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder iconSize -int 16
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder showIconPreview -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder sortColumn -string "name"
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder textSize -int 13
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder useRelativeDates -int 1
# com.apple.finder: Finder settings - UI tweaks, visibility, search behavior, etc.
defaults write com.apple.finder viewOptionsVersion -int 1
# com.apple.menuextra.clock: Other system settings.
defaults write com.apple.menuextra.clock ShowAMPM -int 1
# com.apple.menuextra.clock: Other system settings.
defaults write com.apple.menuextra.clock ShowDate -int 0
# com.apple.menuextra.clock: Other system settings.
defaults write com.apple.menuextra.clock ShowDayOfWeek -int 1
# com.apple.screencapture: Screenshot settings - location, format, shadow effect, etc.
defaults write com.apple.screencapture captureDelay -int 5
# com.apple.screencapture: Screenshot settings - location, format, shadow effect, etc.
defaults write com.apple.screencapture last-analytics-stamp -string "757601706.183534"
# com.apple.screencapture: Screenshot settings - location, format, shadow effect, etc.
defaults write com.apple.screencapture Height -int 1054
# com.apple.screencapture: Screenshot settings - location, format, shadow effect, etc.
defaults write com.apple.screencapture Width -int 1792
# com.apple.screencapture: Screenshot settings - location, format, shadow effect, etc.
defaults write com.apple.screencapture X -int 0
# com.apple.screencapture: Screenshot settings - location, format, shadow effect, etc.
defaults write com.apple.screencapture Y -int 66
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess AssistiveControlType -int 2
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-01 20:03:05"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-01 20:03:11"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-07 17:07:37"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-10 10:32:20"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-15 09:56:25"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-15 09:56:26"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-15 17:32:09"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-15 17:32:10"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-17 10:46:09"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-21 07:33:08"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-21 07:33:09"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-22 11:48:15"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-22 11:59:46"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-22 12:52:56"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-25 13:09:42"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-30 17:41:58"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-10-30 17:42:04"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-05 11:18:14"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-05 11:18:16"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-05 11:46:09"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-09 13:02:17"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-09 13:02:19"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-10 12:01:22"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-10 12:01:29"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-10 13:14:14"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-10 14:47:15"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-10 15:05:03"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-10 16:12:09"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-11 04:38:43"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-11 09:31:00"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-11 09:31:05"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-11 09:50:49"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-19 08:43:15"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-21 04:11:33"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-26 16:02:21"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-26 16:02:26"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-27 08:05:26"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-28 13:50:47"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-28 13:50:49"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-11-28 16:37:25"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-06 07:55:46"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-09 11:13:05"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-20 10:47:42"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-20 10:47:46"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-23 08:57:38"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-23 08:57:41"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2024-12-23 13:30:55"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2025-01-03 14:23:42"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2025-01-03 14:23:45"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Date -string "2025-01-05 18:07:23"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess Reason -string "Reset"
# com.apple.universalaccess: Other system settings.
defaults write com.apple.universalaccess State -int 0
