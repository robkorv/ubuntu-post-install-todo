# ubuntu-post-install-todo

My task list after intalling Ubuntu 24.04

- stuff

  - [ ] `sudo ufw enable` _enables firewall_
  - [ ] `sudo ufw allow from 192.168.0.0/16` _allow incomming traffic from lan_
  - [ ] `sudo apt update` _updates repositories_
  - [ ] `sudo apt full-upgrade` _upgrades packages to latest version_
  - [ ] `sudo apt install ubuntu-restricted-extras $(check-language-support)` _installs Microsoft fonts, extra media decoders and missing translations_
  - [ ] `sudo apt install byobu curl gdebi-core gimp git git-cola kdiff3 lnav python3-pip python3-venv shutter vim` _installs dependencies and software I use_
  - [ ] `gsettings set org.gnome.desktop.calendar show-weekdate true` _enables week numbers in calendar widget_
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
  - [ ] "Settings" -> "Mouse & Touchpad" -> "Mouse" -> "Mouse Acceleration" -> ""Disable"
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

  - [ ] `sudo apt install zsh-antigen` _installs zsh-antigen_
  - [ ] `printf "set -g default-shell /usr/bin/zsh\nset -g default-command /usr/bin/zsh" > .config/byobu/.tmux.conf` _enables zsh in byobu_
  - [ ] add the following to `~/.zshrc` _enables oh my zsh with robbyrussell theme as well as some auto-complete bundles_

  ```bash
  source /usr/share/zsh-antigen/antigen.zsh
  antigen use oh-my-zsh
  antigen bundle git
  antigen theme robbyrussell
  antigen apply
  ```

  - [ ] close current terminal and start a new one. zsh should now be enabled

- git

  - [ ] [generate ssh](https://gist.github.com/robkorv/592b46e8ff9742d74ca4a3f894857dee) -> [add ssh github](https://github.com/settings/ssh), [add ssh gitlab](https://gitlab.com/profile/keys)
  - [ ] `git config --global user.name "Robbert Korving"`
  - [ ] `git config --global user.email "r.korving@gmail.com"`
  - [ ] `git config --global core.editor vim`
  - [ ] `git config --global merge.tool kdiff3`
  - [ ] `git config --global fetch.prune true`
  - [ ] `git config --global rebase.autosquash true`

- misc
  - [ ] `sudo snap install discord slack dbeaver-ce spotify`
  - [ ] `sudo snap install code --classic`
  - [ ] [thefuck](https://github.com/nvbn/thefuck)
    - `python3 -m venv ~/venv --prompt "~/venv"` _creates a virtual environment in your home_
    - `source ~/venv/bin/activate` in `~/.zshrc` _activates the venv in every terminal session, type deactivate to get out of it_
    - `pip install "thefuck@git+https://github.com/nvbn/thefuck" setuptools` -> `eval $(thefuck --alias)` in `~/.zshrc`
  - [ ] [Yubico Authenticator](https://www.yubico.com/products/yubico-authenticator/)
    - `sudo apt install pcscd`
    - extract latest and run `./desktop_integration.sh -i`
  - [ ] [OBS Studio](https://obsproject.com) -> https://launchpad.net/~obsproject/+archive/ubuntu/obs-studio
  - [ ] [virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads#Debian-basedLinuxdistributions)
    - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list`
    - `wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg`
    - `sudo apt update`
    - `sudo apt install virtualbox-7.0`
  - [ ] [docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
    - `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg`
    - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list`
    - `sudo apt update`
    - `sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`
    - `sudo usermod -aG docker $USER`
    - `newgrp docker`
    - `sudo systemctl enable docker.service`
    - `sudo systemctl enable containerd.service`
  - [ ] install [vagrant](https://www.vagrantup.com/downloads.html)
    - `curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/vagrant.gpg`
    - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/vagrant.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/vagrant.list`
    - `sudo apt update`
    - `sudo apt install vagrant`
  - [ ] [nodejs](https://github.com/nodesource/distributions/blob/master/README.md#debian-and-ubuntu-based-distributions)
    - install latest [LTS](https://github.com/nodejs/release?tab=readme-ov-file#release-schedule)
    - `sudo -H npm install npm@latest -g` _updates global npm, without writing root owned files in current user's home dir_
