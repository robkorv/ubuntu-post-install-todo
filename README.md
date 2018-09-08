ubuntu-post-install-todo
========================

My task list after intalling Ubuntu 16.04

* [ ] `sudo ufw enable`
* [ ] `sudo apt-get install ubuntu-restricted-extras vim byobu gdebi-core kdiff3-qt pgadmin3 dia-gnome git`
* [ ] Start firefox and Logon to LastPass
 * [ ] `Voorkeuren` -> `Automatisch aanmeldgegevens invullen`, bij geavanceerd `Zoeken naar ...` uitzetten
 * [ ] login to firefox sync
 * [ ] Fire Gestures, disable all but `Muis gebaren`
 * [ ] install [HTML validator](http://users.skynet.be/mgueury/mozilla/index.html), choose serial and disable it by default after installation
 * [ ] enable bookmark bar
* [ ] Cleanup Unity bar
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
* [ ] [generate ssh](https://gist.github.com/robkorv/592b46e8ff9742d74ca4a3f894857dee) -> [add ssh github](https://github.com/settings/ssh), [add ssh gitlab](https://gitlab.com/profile/keys)
* [ ] `git config --global user.name "Robbert Korving"` -> `git config --global user.email "r.korving@gmail.com"` -> `git config --global core.editor vim` -> `git config --global merge.tool kdiff3` -> `git config --global push.default simple`
* [ ] `sudo snap install spotify`
* [ ] `sudo snap install discord`
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
