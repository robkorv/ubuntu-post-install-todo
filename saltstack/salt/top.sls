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
    # cleans unity start bar
    - cleanup-unity-launcher
    # fixes unity network indicator for unmanaged lan
    - network-indicator
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
    # sets autologin for ubuntu-desktop
    - autologin
