#!/usr/bin/env bash

# macOS Preferences Configuration
# This script applies various macOS tweaks for a better user experience.
# It is structured into sections to make it easier to understand and modify.


# ==================== Finder Tweaks ====================
# Customize Finder for a better file browsing experience.
# Includes showing hidden files, file extensions, and improved search behavior.
defaults write com.apple.finder AppleShowAllFiles -string "yes"
defaults write com.apple.finder BulkRenameAddNumberTo -int 0
defaults write com.apple.finder BulkRenameAddTextText -string ""
defaults write com.apple.finder BulkRenameAddTextTo -int 0
defaults write com.apple.finder BulkenameFindText -string "Untitled"
defaults write com.apple.finder BulkRenameName -string "File "
defaults write com.apple.finder BulkRenamePlaceNumberAt -int 0
defaults write com.apple.finder BulkRenameReplaceText -string "1.0_version_"
defaults write com.apple.finder BulkRenameStartIndex -int 1
defaults write com.apple.finder CustomViewStyleVersion -int 1
defaults write com.apple.finder calculateAllSizes -int 0
defaults write com.apple.finder ascending -int 1
defaults write com.apple.finder identifier -string "name"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 168
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "ubiquity"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 35
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "dateModified"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 177
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "dateCreated"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 177
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "size"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 97
defaults write com.apple.finder ascending -int 1
defaults write com.apple.finder identifier -string "kind"
defaults write com.apple.finder visible -int 1
defaults write com.apple.finder width -int 115
defaults write com.apple.finder ascending -int 1
defaults write com.apple.finder identifier -string "label"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 100
defaults write com.apple.finder ascending -int 1
defaults write com.apple.finder identifier -string "version"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 75
defaults write com.apple.finder ascending -int 1
defaults write com.apple.finder identifier -string "comments"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 300
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "dateLastOpened"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 177
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "dateAdded"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 181
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "shareOwner"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 210
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "shareLastEditor"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 210
defaults write com.apple.finder ascending -int 0
defaults write com.apple.finder identifier -string "invitationStatus"
defaults write com.apple.finder visible -int 0
defaults write com.apple.finder width -int 210
defaults write com.apple.finder iconSize -int 16
defaults write com.apple.finder showIconPreview -int 1
defaults write com.apple.finder sortColumn -string "name"
defaults write com.apple.finder textSize -int 13
defaults write com.apple.finder useRelativeDates -int 1
defaults write com.apple.finder viewOptionsVersion -int 1

# ==================== Dock & Mission Control ====================
# Adjust the Dock and Mission Control settings for a cleaner, faster experience.
# Includes auto-hiding, reducing animations, and setting up hot corners.
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock largesize -int 128
defaults write com.apple.dock lastShowIndicatorTime -string "757682631.718197"
defaults write com.apple.dock loc -string "en_GB:(null)"
defaults write com.apple.dock mod-count -int 7780
defaults write com.apple.dock GUID -int 2707065211
defaults write com.apple.dock book -string "{length = 584, bytes = 0x626f6f6b 48020000 00000410 30000000 ... 04000000 00000000 }"
defaults write com.apple.dock bundle-identifier -string "com.apple.launchpad.launcher"
defaults write com.apple.dock dock-extra -int 0
defaults write com.apple.dock _CFURLString -string "file:///System/Applications/Launchpad.app/"
defaults write com.apple.dock _CFURLStringType -int 15

# ==================== Trackpad & Mouse ====================
# Tune trackpad and mouse behavior for a smoother and more precise interaction.
# Includes tap-to-click, scroll direction, and tracking speed.
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadHandResting -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0
defaults write com.apple.AppleMultitouchTrackpad UserPreferences -int 1
defaults write com.apple.AppleMultitouchTrackpad version -int 12
defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID -string "com.apple.keylayout.ABC"
defaults write com.apple.HIToolbox AppleDictationAutoEnable -int 1
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 30778
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Czech-QWERTY"
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.CharacterPaletteIM"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.PressAndHold"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.ironwood"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -string "-2276"
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Mongolian-Cyrillic"
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.EmojiFunctionRowItem"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
defaults write com.apple.HIToolbox AppleFnUsageType -int 3
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 30778
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Czech-QWERTY"
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -string "-2276"
defaults write com.apple.HIToolbox KeyboardLayout Name -string "Mongolian-Cyrillic"
defaults write com.apple.HIToolbox AppleInputSourceUpdateTime -string "2025-01-09 14:37:30 +0000"
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.PressAndHold"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
defaults write com.apple.HIToolbox Bundle ID -string "com.apple.inputmethod.EmojiFunctionRowItem"
defaults write com.apple.HIToolbox InputSourceKind -string "Non Keyboard Input Method"
defaults write com.apple.HIToolbox InputSourceKind -string "Keyboard Layout"
defaults write com.apple.HIToolbox KeyboardLayout ID -int 252
defaults write com.apple.HIToolbox KeyboardLayout Name -string "ABC"

# ==================== System UI & Accessibility ====================
# Enhance macOS UI elements and improve accessibility features.
# Includes dark mode, transparency settings, and contrast adjustments.



# ==================== Screenshots ====================
# Configure how screenshots are taken and saved.
# Includes default save location, file format, and whether shadows are included.
defaults write com.apple.screencapture captureDelay -int 5
defaults write com.apple.screencapture last-analytics-stamp -string "757601706.183534"
defaults write com.apple.screencapture Height -int 1054
defaults write com.apple.screencapture Width -int 1792
defaults write com.apple.screencapture X -int 0
defaults write com.apple.screencapture Y -int 66

# ==================== Other Useful Tweaks ====================
# Additional useful macOS tweaks that don't fit into a specific category.
defaults write com.apple.menuextra.clock ShowAMPM -int 1
defaults write com.apple.menuextra.clock ShowDate -int 0
defaults write com.apple.menuextra.clock ShowDayOfWeek -int 1
