ubuntu-post-install-todo
========================

My task list after intalling Ubuntu 18.04

- stuff
  - [ ] `sudo ufw enable` _enables firewall_
  - [ ] `sudo apt update` _updates repositories_
  - [ ] `sudo apt dist-upgrade` _upgrades packages to latest version_
  - [ ] `sudo apt install ubuntu-restricted-extras $(check-language-support)` _installs Microsoft fonts, extra media decoders and missing translations_
  - [ ] `sudo apt install vim byobu gdebi-core kdiff3-qt pgadmin3 dia git python3-pip python3-pyqt5 curl` _installs dependencies and software I use_
  - [ ] `sudo -H pip3 install --upgrade pip` _updates python3-pip_
  - [ ] `gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'` _disables mouse acceleration_
  - [ ] "Settings" -> "Starter" -> "Display on" -> "All screens"
  - [ ] Cleanup Unity bar

- Start firefox
  - [ ] Install and Logon to LastPass
  - [ ] login to firefox sync
  - [ ] enable bookmark bar

- enable newer gtx drivers for https://github.com/ValveSoftware/Proton
  - [ ] `sudo add-apt-repository ppa:graphics-drivers/ppa` _adds repository to the system_
  - [ ] Enable driver at "Software & Updates" -> "Additional Drivers"
  - [ ] `sudo reboot` _reboots the system_
  - [ ] "Settings" -> "Devices" -> "Screens" -> Drag screens to the right order and put the 144hz to 144hz

- byobu
  - [ ] `byobu-enable` _enables byobu as login shell_
  - [ ] `byobu` -> `ctrl+a` -> "(1) Screen mode (GNU Screen's default escape sequence)" _starts byobu and sets the default escape sequence_
  - [ ] use byobu as default shell -> `ctrl+alt+t` -> "edit" -> "preferences" -> "command" -> "Run custom command" -> `/usr/bin/byobu`

- zsh
  - [ ] `sudo apt install zsh-antigen` _installs zsh-antigen_
  - [ ] `printf "set -g default-shell /usr/bin/zsh\nset -g default-command /usr/bin/zsh" > .byobu/.tmux.conf` enables zsh in byobu_
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
  - [ ] `sudo add-apt-repository ppa:otto-kesselgulasch/gimp`
  - [ ] `sudo apt-get update`
  - [ ] `sudo apt-get install gimp`
  - [ ] `bewerken` -> `voorkeuren` -> `interface` -> `taal` = `Engels [en_US]` -> restart gimpapti

- misc
  - [ ] `sudo snap install spotify`
  - [ ] `sudo snap install discord`
  - [ ] `pip3 install --user thefuck` -> `eval $(thefuck --alias)` -> `~/.zshrc`
  - [ ] `sudo apt install flameshot`
  - [ ] `sudo apt install virtualbox`
  - [ ] [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
  - [ ] install [vagrant](https://www.vagrantup.com/downloads.html)
  - [ ] [nodejs](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
  - [ ] `sudo npm install npm@latest -g`
  - [ ] [git-cola](https://github.com/git-cola/git-cola#run-from-source)
  - [ ] [Sublime](https://www.sublimetext.com)
