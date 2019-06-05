#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh' \
    && source './utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    # System software update tool
    # https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man8/softwareupdate.8.html

    execute 'sudo softwareupdate --install --all' 'Update system software'
    printf '\n'

    #execute 'sudo spctl --master-disable'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if cmd_exists 'brew'; then
        execute 'brew update' 'brew (update)'
        execute 'brew upgrade' 'brew (upgrade)''
    fi

}

main
