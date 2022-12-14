#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh' \
    && source './utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    ./install_xcode.sh

    print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./install_homebrew.sh
    brew_install 'Homebrew Cask' 'caskroom/cask/brew-cask' 'caskroom/cask'

    ./update_and_upgrade.sh
    print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  #  brew_install 'Bash' 'bash'
  #  ./change_default_bash_version.sh
  #  brew_install 'Bash Completion 2' 'bash-completion2' 'homebrew/versions'

  #  print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  #  brew_install '1Password' '1password' 'caskroom/cask' 'cask'
  #  brew_install 'Android File Transfer' 'android-file-transfer' 'caskroom/cask' 'cask'
    brew_install 'Ansible' 'ansible'
  #  brew_install 'AppCleaner' 'appcleaner' 'caskroom/cask' 'cask'
    brew_install 'Atom' 'atom' 'caskroom/cask' 'cask'
  #  brew_install 'Boot2Docker' 'boot2docker' 'caskroom/cask' 'cask'
    brew_install 'Chrome' 'google-chrome' 'caskroom/cask' 'cask'
  #  brew_install 'Chrome Canary' 'google-chrome-canary' 'caskroom/versions' 'cask'
  #  brew_install 'Chromium' 'chromium' 'caskroom/cask' 'cask'
  #  brew_install 'Dark Mode' 'dark-mode'
    brew_install 'Docker' 'docker' 'caskroom/cask' 'cask'
    brew_install 'Docker Toolbox' 'docker-toolbox' 'caskroom/cask' 'cask'
    brew_install 'Docker Machine Driver VMware' 'docker-machine-driver-vmware'
  #  brew_install 'Dropbox' 'dropbox' 'caskroom/cask' 'cask'
  #  brew_install 'FFmpeg' 'ffmpeg'
  #  brew_install 'Evernote' 'evernote' 'caskroom/cask' 'cask'
    brew_install 'Fish' 'fish'
    brew_install 'Firefox' 'firefox' 'caskroom/cask' 'cask'
    brew_install 'Flash Player' 'flash-player' 'caskroom/cask' 'cask'
  #  brew_install 'Flux' 'flux' 'caskroom/cask' 'cask'
  #  brew_install 'Firefox Developer' 'firefoxdeveloperedition' 'caskroom/versions' 'cask'
  #  brew_install 'Firefox Nightly' 'firefox-nightly' 'caskroom/versions' 'cask'
  #  brew_install 'Flash' 'flash' 'caskroom/cask' 'cask'
  #  brew_install 'GIMP' 'lisanet-gimp' 'caskroom/cask' 'cask'
    brew_install 'Git' 'git'
    brew_install 'Google Backup and Sync' 'google-backup-and-sync' 'caskroom/cask' 'cask'
    brew_install 'Google File Stream' 'google-drive-file-stream' 'caskroom/cask' 'cask'
  #  brew_install 'Google Earth Pro' 'google-earth-pro' 'caskroom/cask' 'cask'
  #  brew_install 'ImageAlpha' 'imagealpha' 'caskroom/cask' 'cask'
    brew_install 'ImageMagick' 'imagemagick'
    brew_install 'iPerf3' 'iperf3'
  #  brew_install 'ImageOptim' 'imageoptim' 'caskroom/cask' 'cask'
    brew_install 'iTerm2' 'iterm2' 'caskroom/cask' 'cask'
  #  brew_install 'LICEcap' 'licecap' 'caskroom/cask' 'cask'
  #  brew_install 'LibreOffice' 'libreoffice' 'caskroom/cask' 'cask'
  #  brew_install 'Microsoft Office' 'microsoft-office' 'caskroom/cask' 'cask'
    brew_install 'Netspot' 'netspot' 'caskroom/cask' 'cask'
    brew_install 'Nmap' 'nmap'
  #  brew_install 'Node' 'node'
  #  brew_install 'Opera' 'opera' 'caskroom/cask' 'cask'
  #  brew_install 'Opera Beta' 'opera-beta' 'caskroom/versions' 'cask'
  #  brew_install 'Opera Developer' 'opera-developer' 'caskroom/versions' 'cask'
    brew_install 'Packer' 'packer'
    brew_install 'Parallels Desktop' 'parallels' 'caskroom/cask' 'cask'
  #  brew_install 'Putty' 'putty'
  #  brew_install 'Reaper' 'reaper' 'caskroom/cask' 'cask'
  #  brew_install 'Scrivener' 'scrivener' 'caskroom/cask' 'cask'
  #  brew_install 'Slack' 'slack' 'caskroom/cask' 'cask'
    brew_install 'Speedtest' 'speedtest-cli'
    brew_install 'Spotify' 'spotify' 'caskroom/cask' 'cask'
  #  brew_install 'Steam' 'steam' 'caskroom/cask' 'cask'
  #  brew_install 'Spectacle' 'spectacle' 'caskroom/cask' 'cask'
    brew_install 'Terraform' 'terraform'
  #  brew_install 'tmux' 'tmux'
  #  brew_install 'Transmission' 'transmission' 'caskroom/cask' 'cask'
  #  brew_install 'TTF/OTF ??? WOFF (Zopfli)' 'sfnt2woff-zopfli' 'bramstein/webfonttools'
  #  brew_install 'TTF/OTF ??? WOFF' 'sfnt2woff' 'bramstein/webfonttools'
    brew_install 'Unarchiver' 'the-unarchiver' 'caskroom/cask' 'cask'
    brew_install 'Vagrant' 'vagrant' 'caskroom/cask' 'cask'
  #  brew_install 'Vim' 'vim --override-system-vi'
    brew_install 'VirtualBox' 'virtualbox' 'caskroom/cask' 'cask'
    brew_install 'VirtualBox Extension Pack' 'virtualbox-extension-pack' 'caskroom/cask' 'cask'
    brew_install 'VLC' 'vlc' 'caskroom/cask' 'cask'
    brew_install 'VMware Remote Console' 'vmware-remote-console' 'caskroom/cask' 'cask'
  #  brew_install 'VMware Fusion' 'vmware-fusion' 'caskroom/cask' 'cask'
  #  brew_install 'WebKit' 'webkit-nightly' 'caskroom/versions' 'cask'
    brew_install 'Wireshark' 'wireshark'
  #  brew_install 'WOFF2' 'woff2' 'bramstein/webfonttools'
  #  brew_install 'Zopfli' 'zopfli'

    print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    
    ./cleanup.sh

}

main
