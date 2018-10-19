ubuntu-post-install-todo
========================

My task list after intalling Ubuntu 16.04

* [ ] Before first login graphical login
  * `sudo apt-get update`
  * `sudo apt-get dist-upgrade`
  * `sudo apt-get install ubuntu-restricted-extras $(check-language-support)`
* [ ] `sudo ufw enable`
* [ ] `sudo apt-get install vim byobu gdebi-core kdiff3-qt pgadmin3 dia-gnome git python3-pip python-pyqt5`
* [ ] Start firefox and Logon to LastPass
 * [ ] `Voorkeuren` -> `Automatisch aanmeldgegevens invullen`, bij geavanceerd `Zoeken naar ...` uitzetten
 * [ ] login to firefox sync
 * [ ] enable bookmark bar
* [ ] Cleanup Unity bar
* [ ] enable newer gtx drivers for https://github.com/ValveSoftware/Proton
  * [ ] `sudo add-apt-repository ppa:graphics-drivers/ppa`
  * [ ] `sudo apt-get update`
* [ ] `System settings`
  * [ ] `Helderheid en vergrendelen` -> disable `Pauzestand`, `Mijn wachtwoord vereisen ...`
  * [ ] `Schermen` disable `Plakranden`
  * [ ] `Software & Updates` -> `Extra stuurprogramma's` enable tested binary driver
* [ ] use byobu as default shell -> `ctrl+alt+t` -> profiel bewerken -> opdracht aangepast `/usr/bin/byobu`
* [ ] zsh
  * [ ] `sudo apt-get install zsh-antigen`
  * [ ] `printf "set -g default-shell /usr/bin/zsh\nset -g default-command /usr/bin/zsh" > .byobu/.tmux.conf`
  * [ ] `.zshrc`
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
* [ ] [disable mouse accel](https://wiki.archlinux.org/index.php/Mouse_acceleration#Disabling_mouse_acceleration) goes in `/usr/share/X11/xorg.conf.d/50-mouse-acceleration.conf`
* [ ] [enable hq audio ](https://wiki.archlinux.org/index.php/PulseAudio#Configuration) `~/.config/pulse/client.conf`
```
default-sample-format = s24le
default-sample-rate = 48000
```
* [ ] [generate ssh](https://gist.github.com/robkorv/592b46e8ff9742d74ca4a3f894857dee) -> [add ssh github](https://github.com/settings/ssh), [add ssh gitlab](https://gitlab.com/profile/keys)
* [ ] `git config --global user.name "Robbert Korving"` -> `git config --global user.email "r.korving@gmail.com"` -> `git config --global core.editor vim` -> `git config --global merge.tool kdiff3`
* [ ] `sudo snap install spotify`
* [ ] `sudo snap install discord`
* [ ] `pip3 install --user thefuck` -> `eval $(thefuck --alias)` -> `~/.zshrc`
* [ ] [virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads#Debian-basedLinuxdistributions)
* [ ] [docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/)
* [ ] install [vagrant](https://www.vagrantup.com/downloads.html)
* [ ] [nodejs](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
* [ ] [gimp](http://www.gimp.org/)
 * [ ] `sudo add-apt-repository ppa:otto-kesselgulasch/gimp`
 * [ ] `sudo apt-get update`
 * [ ] `sudo apt-get install gimp`
 * [ ] `bewerken` -> `voorkeuren` -> `interface` -> `taal` = `Engels [en_US]` -> restart gimp
 * [ ] `window` -> `single window mode`
* [ ] [git-cola](https://github.com/git-cola/git-cola#run-from-source)
* [ ] [Sublime](https://www.sublimetext.com)
* [ ] shutter
  * [ ] `sudo add-apt-repository ppa:shutter/ppa`
  * [ ] `sudo apt-get update`
  * [ ] `sudo apt-get install shutter`
