base:
  '*':
    # updates system
    - update
    # activates firewall
    - ufw
    # sets dutch timezone
    - timezone
    # sets dutch language
    - locale
    # disables quiet graphical boot
    - grub
    # install unity
    - ubuntu-desktop
    # fixes unity network indicator for unmanaged lan
    - network-indicator
    # sets autologin for ubuntu-desktop
    - autologin
    # installs ubuntu packages
    - packages
    # installs ruby packages
    - gems
    # installs google chrom
    - google-chrome
    # installs virtualbox
    - virtualbox
    # installs vagrant
    - vagrant
    # configures git
    - git-config
    # generates ssh keys to add in git-hub account
    - github-ssh
    # installs spotify
    - spotify
    # cleans unity start bar
    - cleanup-unity-launcher
