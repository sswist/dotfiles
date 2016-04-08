#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set_preferences() {

    dark-mode

    execute 'defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true' \
        'Avoid creating ".DS_Store" files on network volumes'

    #execute 'defaults write com.apple.menuextra.battery ShowPercent -string "NO"' \
        #'Hide battery percentage from the menu bar'

    execute 'defaults write com.apple.CrashReporter UseUNC 1' \
        'Make crash reports appear as notifications'

    execute 'defaults write com.apple.LaunchServices LSQuarantine -bool false' \
        'Disable "Are you sure you want to open this application?" dialog'

    # execute 'defaults write com.apple.loginwindow TALLogoutSavesState 0' \
    #     'Disable "Reopen windows when logging back in"'

    execute 'defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true' \
        'Automatically quit the printer app once the print jobs are completed'

    execute 'defaults write com.apple.screencapture disable-shadow -bool true' \
        'Disable shadow in screenshots'

    execute 'defaults write com.apple.screencapture location -string "$HOME/Desktop"' \
        'Save screenshots to the Desktop'

    execute 'defaults write com.apple.screencapture type -string "jpg"' \
        'Save screenshots as JPGs'

    execute 'defaults write com.apple.screensaver askForPassword -int 1 &&
             defaults write com.apple.screensaver askForPasswordDelay -int 0'\
        'Require password immediately after into sleep or screen saver mode'

    execute 'defaults write NSGlobalDomain AppleFontSmoothing -int 2' \
        'Enable subpixel font rendering on non-Apple LCDs'

    #execute 'defaults write NSGlobalDomain AppleShowScrollBars -string "Always"' \
        #'Always show scrollbars'

    execute 'defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true' \
        'Disable automatic termination of inactive apps'

    execute 'defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true' \
        'Expand save panel by default'

    execute 'defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2' \
        'Set sidebar icon size to medium'

    execute 'defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false' \
        'Disable the over-the-top focus ring animation'

    execute 'defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false' \
        'Disable resume system-wide'

    execute 'defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true' \
        'Expand print panel by default'

    execute 'sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Nostromo" &&
             sudo scutil --set ComputerName "Nostromo" &&
             sudo scutil --set HostName "Nostromo" &&
             sudo scutil --set LocalHostName "Nostromo"' \
        'Set computer name'

    execute 'sudo systemsetup -setrestartfreeze on' \
        'Restart automatically if the computer freezes'

    #execute 'sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 0 &&
            # sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist &&
            # sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist' \
      #  'Turn Bluetooth off'

    execute '   for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
                    sudo defaults write "${domain}" dontAutoLoad -array \
                        "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
                        "/System/Library/CoreServices/Menu Extras/Volume.menu"
                done && \

                sudo defaults write com.apple.systemuiserver menuExtras -array \
                    "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
                    "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
                    "/System/Library/CoreServices/Menu Extras/Battery.menu" \
                    "/System/Library/CoreServices/Menu Extras/Clock.menu"
            ' \
        'Hide Time Machine and Volume icons from the menu bar'

    execute 'sudo nvram SystemAudioVolume=" "' \
        'Disable the sound effects on boot'

    execute 'defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"' \
        'Set highlight color to green'

    execute 'defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false' \
        'Save to disk (not to iCloud) by default'

    execute 'defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1' \
        'Check for software updates daily, not just once per week'

    execute 'defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40' \
        'Increase sound quality for Bluetooth headphones/headsets'

    execute 'defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false' \
        'Disable “natural” (Lion-style) scrolling'

    execute 'defaults write com.apple.BezelServices kDim -bool true' \
        'Automatically illuminate built-in MacBook keyboard in low light'

    execute 'defaults write com.apple.BezelServices kDimTime -int 300' \
        'Turn off keyboard illumination when computer is not used for 5 minutes'

    execute 'defaults write com.apple.Safari UniversalSearchEnabled -bool false \
            defaults write com.apple.Safari SuppressSearchSuggestions -bool true' \
        'Privacy: don’t send search queries to Apple'

    execute 'defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false' \
        'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app'

    execute 'defaults write com.apple.mail DisableInlineAttachmentViewing -bool true' \
        'Disable inline attachments (just show the icons)'



}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple '\n  UI & UX\n\n'
    set_preferences

    killall 'SystemUIServer' &> /dev/null

}

main
