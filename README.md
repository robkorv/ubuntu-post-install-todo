# ubuntu-post-install-todo

My task list after intalling Ubuntu 26.04

- stuff
  - [ ] `sudo ufw enable` _enables firewall_
  - [ ] `sudo ufw allow from 192.168.0.0/16` _allow incomming traffic from lan_
  - [ ] `sudo apt update` _updates repositories_
  - [ ] `sudo apt full-upgrade` _upgrades packages to latest version_
  - [ ] `sudo apt install ubuntu-restricted-extras $(check-language-support)` _installs Microsoft fonts, extra media decoders and missing translations_
  - [ ] `sudo apt install byobu curl gdebi-core gimp git git-cola kdiff3 lnav python3-pip python3-venv shutter vim` _installs dependencies and software I use_
  - [ ] `gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true` _enables pasting with middle mouse button_
  - [ ] "Settings" -> "Wif-Fi" -> "Disable"
  - [ ] "Settings" -> "Bluetooth" -> "Disable"
  - [ ] "Settings" -> "Displays" -> "Primary display" -> "Most right screen"
  - [ ] "Settings" -> "Sound" -> "Volume Levels" -> "Press speaker of System Sounds to mute it"
  - [ ] "Settings" -> "Multitasking" -> "Workspaces" -> "Fixed number of workspaces" -> "1"
  - [ ] "Settings" -> "Multitasking" -> "Application Switching" -> "Include applications from each monitor only"
  - [ ] "Settings" -> "Appearance" -> "Style" -> "Dark"
  - [ ] "Settings" -> "Ubuntu Desktop" -> "Desktop Icons" -> "Show Personal folder" -> "Disable"
  - [ ] "Settings" -> "Ubuntu Desktop" -> "Dock" -> "Show on" -> "All displays"
  - [ ] "Settings" -> "Ubuntu Desktop" -> "Dock" -> "Configure dock behaviour" -> "Include Unmounted Volumes" -> "Disable" && "Show Trash" -> "Disable"
  - [ ] "Settings" -> "Mouse & Touchpad" -> "Mouse" -> "Mouse Acceleration" -> "Disable"
  - [ ] "Settings" -> "System" -> "Region & Language" -> "Manage installed Languages" -> Install Nederlands, switch to "Regional Formats" tab, set "Display numbers,..." to Nederlands _previously this would have been set correct by the installer based on your chosen timezone_
  - [ ] "Settings" -> "System" -> "Region & Language" -> "Date & Time" -> "Clock & Calendar" -> "Week Numbers" -> "Enable"
  - [ ] Cleanup Start bar

- Start firefox
  - [ ] Install and Logon to LastPass
  - [ ] login to firefox sync
  - [ ] alt -> "View" -> "Toolbars" -> "Bookmarks toolbar" -> "Always show"
  - [ ] menu -> "More tools" -> "Customize toolbar...". Do cleanup, add home button next to reload.
  - [ ] extensions -> Pin the ones that are used allot

- byobu
  - [ ] `byobu-enable` _enables byobu as login shell_
  - [ ] `byobu` -> ctrl+a -> "(1) Screen mode (GNU Screen's default escape sequence)" _starts byobu and sets the default escape sequence_
  - [ ] use byobu as default shell -> ctrl+alt+t -> "preferences" -> "Unamed profile" -> "command" -> "Run custom command instead of my shell" -> `/usr/bin/byobu`

- zsh
  - [ ] `sudo apt install zsh-antidote`
  - [ ] `printf "set -g default-shell /usr/bin/zsh\nset -g default-command /usr/bin/zsh" > .config/byobu/.tmux.conf` _enables zsh in byobu_
  - [ ] add the following to `~/.zshrc`

  ```bash
  ZSH_THEME=robbyrussell

  source /usr/share/zsh-antidote/antidote.zsh
  antidote load
  ```

  - [ ] add the following to `~/.zsh_plugins.txt`

  ```
  getantidote/use-omz

  ohmyzsh/ohmyzsh path:lib
  ohmyzsh/ohmyzsh path:plugins/git
  ```

  - [ ] restart terminal to activate zsh

  - [ ] https://github.com/junegunn/fzf, checkout repo, run `./install`
  - [ ] https://github.com/ajeetdsouza/zoxide, checkout repo, run `./install`, add the following to `~/.zshrc`

  ```bash
  eval "$(zoxide init zsh --cmd cd)"
  ```

- git
  - [ ] [generate ssh](https://gist.github.com/robkorv/592b46e8ff9742d74ca4a3f894857dee) -> [add ssh github](https://github.com/settings/ssh), [add ssh gitlab](https://gitlab.com/profile/keys)
  - [ ] `git config --global user.name "Robbert Korving"`
  - [ ] `git config --global user.email "r.korving@gmail.com"`
  - [ ] `git config --global core.editor vim`
  - [ ] `git config --global merge.tool kdiff3`
  - [ ] `git config --global fetch.prune true`
  - [ ] `git config --global rebase.autosquash true`
  - [ ] `git config --global push.autoSetupRemote true`

- misc
  - [ ] `sudo snap install discord slack spotify`
  - [ ] `sudo snap install code --classic`
  - [ ] `sudo snap install dbeaver-ce --classic`
  - [ ] [Yubico Authenticator](https://www.yubico.com/products/yubico-authenticator/)
    - `sudo apt install pcscd`
    - extract latest and run `./desktop_integration.sh -i`
  - [ ] [OBS Studio](https://obsproject.com) -> https://launchpad.net/~obsproject/+archive/ubuntu/obs-studio
  - [ ] [virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads#Debian-basedLinuxdistributions)
    - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list`
    - `wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg`
    - `sudo apt update`
    - `sudo apt install virtualbox-7.2`
  - [ ] [docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
    - `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg`
    - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list`
    - `sudo apt update`
    - `sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`
    - `sudo usermod -aG docker $USER`
    - `newgrp docker` <-- not installed by default in 26.04, re-login for it to activate
    - `sudo systemctl enable docker.service`
    - `sudo systemctl enable containerd.service`
  - [ ] install [vagrant](https://www.vagrantup.com/downloads.html)
    - `curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/vagrant.gpg`
    - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/vagrant.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/vagrant.list`
    - `sudo apt update`
    - `sudo apt install vagrant`
    - Vagrant not available for 26.04 via their ppa: https://github.com/hashicorp/vagrant/issues/13811
    - Download and install deb manually from https://releases.hashicorp.com/vagrant/
  - [ ] [nodejs](https://nodejs.org/en/download)
    - install [nvm](https://github.com/nvm-sh/nvm#install--update-script)
    - restart terminal session
    - install [active LTS](https://github.com/nodejs/release#release-schedule) via [nvm](https://github.com/nvm-sh/nvm#long-term-support) with `nvm install --lts`
