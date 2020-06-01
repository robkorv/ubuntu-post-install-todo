ubuntu-post-install-todo
========================

My task list after intalling Ubuntu 20.04

- stuff
  - [ ] `sudo ufw enable` _enables firewall_
  - [ ] `sudo apt update` _updates repositories_
  - [ ] `sudo apt dist-upgrade` _upgrades packages to latest version_
  - [ ] `sudo apt install ubuntu-restricted-extras $(check-language-support)` _installs Microsoft fonts, extra media decoders and missing translations_
  - [ ] `sudo apt install vim byobu gdebi-core kdiff3-qt dia git python3-pip python3-pyqt5 curl` _installs dependencies and software I use_
  - [ ] `sudo -H pip3 install --upgrade pip` _updates python3-pip_
  - [ ] `gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'` _disables mouse acceleration_
  - [ ] "Settings" -> "Starter" -> "Display on" -> "All screens"
  - [ ] Cleanup Start bar

- Start firefox
  - [ ] Install and Logon to LastPass
  - [ ] login to firefox sync
  - [ ] enable bookmark bar

- byobu
  - [ ] `byobu-enable` _enables byobu as login shell_
  - [ ] `byobu` -> `ctrl+a` -> "(1) Screen mode (GNU Screen's default escape sequence)" _starts byobu and sets the default escape sequence_
  - [ ] use byobu as default shell -> `ctrl+alt+t` -> "edit" -> "preferences" -> "command" -> "Run custom command" -> `/usr/bin/byobu`

- zsh
  - [ ] `sudo apt install zsh-antigen` _installs zsh-antigen_
  - [ ] `printf "set -g default-shell /usr/bin/zsh\nset -g default-command /usr/bin/zsh" > .byobu/.tmux.conf` _enables zsh in byobu_
  - [ ] add the following to `~/.zshrc` _enables oh my zsh with robbyrussell theme as well as some auto-complete bundles_
  ```bash
  source /usr/share/zsh-antigen/antigen.zsh
  antigen use oh-my-zsh

  antigen bundle git
  antigen bundle pip
  antigen bundle python
  antigen bundle vagrant

  antigen theme robbyrussell

  antigen apply
  ```
  - [ ] Antigen package on Ubuntu is broken, see https://github.com/zsh-users/antigen/issues/659. Fix `sudo curl -o /usr/share/zsh-antigen/antigen.zsh -sL git.io/antigen` _overwrites antigen script with the complete version_
  - [ ] close current terminal and start a new one. zsh should now be enabled

- git
  - [ ] [generate ssh](https://gist.github.com/robkorv/592b46e8ff9742d74ca4a3f894857dee) -> [add ssh github](https://github.com/settings/ssh), [add ssh gitlab](https://gitlab.com/profile/keys)
  - [ ] `git config --global user.name "Robbert Korving"` -> `git config --global user.email "r.korving@gmail.com"` -> `git config --global core.editor vim` -> `git config --global merge.tool kdiff3`

- [gimp](http://www.gimp.org/)
  - [ ] `sudo apt-get install gimp`
  - [ ] `bewerken` -> `voorkeuren` -> `interface` -> `taal` = `Engels [en_US]` -> restart gimp

- misc
  - [ ] `sudo snap install spotify`
  - [ ] `sudo snap install discord`
  - [ ] `sudo snap install obs-studio`
  - [ ] `sudo snap install ffmpeg`
  - [ ] `pip3 install --user thefuck` -> `eval $(thefuck --alias)` in `~/.zshrc`
  - [ ] `sudo apt install flameshot`
  - [ ] [virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads#Debian-basedLinuxdistributions) -> `deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian focal contrib` in `/etc/apt/sources.list.d/virtualbox.list` -> `wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -` -> `sudo apt update` -> `sudo apt install virtualbox-6.1`
  - [ ] [handbrake](https://handbrake.fr/) `sudo add-apt-repository ppa:stebbins/handbrake-releases` -> `sudo apt install handbrake-gtk`
  - [ ] [docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository) `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -` -> `echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list` -> `sudo apt update` -> `sudo apt install docker-ce docker-ce-cli containerd.io` -> `sudo usermod -aG docker $USER`
  - [ ] install [vagrant](https://www.vagrantup.com/downloads.html)
  - [ ] [nodejs](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)
  - [ ] `sudo -H npm install npm@latest -g`
  - [ ] [git-cola](https://github.com/git-cola/git-cola#run-from-source)
  - [ ] [Sublime](https://www.sublimetext.com)
