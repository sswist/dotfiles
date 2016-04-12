#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set_preferences() {

    execute 'defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2 \
            defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true \
            defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1 \
            defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true' \
            'Trackpad: map bottom right corner to right-click'



}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple '\n  Trackpad\n\n'
    set_preferences

}

main
