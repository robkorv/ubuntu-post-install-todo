ubuntu-post-install-todo
========================

My task list after intalling Ubuntu 14.04

* [ ] `sudo ufw enable`
* [ ] `sudo apt-get install ubuntu-restricted-extras vim git gdebi-core byobu autoconf bison build-essential libssl-dev libyaml-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev libgsl0-dev curl python-gpgme gnucash`
* [ ] Start firefox and Logon to LastPass
  * [ ] `Voorkeuren` -> `Automatisch aanmeldgegevens invullen`, bij geavanceerd `Zoeken naar ...` uitzetten
 * [ ] Fire Gestures, disable all but `Muis gebaren`
 * [ ] install [HTML validator](http://users.skynet.be/mgueury/mozilla/index.html), choose serial and disable it by default after installation
* [ ] Cleanup Unity bar
* [ ] `System settings`
  * [ ] `Helderheid en vergrendelen` -> disable `Pauzestand`, `Mijn wachtwoord vereisen ...`
  * [ ] `Schermen` disable `Plakranden`
  * [ ] `Gebruikers accounts` -> enable `Automatisch aanmelden`
  * [ ] `Software & Updates` -> `Extra stuurprogramma's` enable tested binary driver
* [ ] `sudo vi /etc/default/grub` -> `GRUB_TIMEOUT=5`, `GRUB_CMDLINE_LINUX_DEFAULT=""`, `GRUB_TERMINAL=console`
* [ ] `sudo update-grub` -> `sudo reboot`
* [ ] use byobu as default shell -> `ctrl+alt+t` -> proefiel bewerken -> opdracht aangepast `/usr/bin/byobu`
* [ ] Install [Chrome](https://www.google.nl/chrome/browser/desktop/index.html)
* [ ] Start `google-chrome`
 * [ ] In settings disable `Aanbieden om je internet wachtwoorden...`, `Aanbieden om pagina's te vertalen...`
 * [ ] login to [Netflix](http://www.netflix.com/), create a shortcut for it
 * [ ] edit `~/.gnome/apps/chrome-http___www.netflix.com_WiHome.desktop`, change `--app=` to `--kiosk `
 * [ ] the same for [nos](http://nos.nl/)
* [ ] [generate ssh](https://help.github.com/articles/generating-ssh-keys/) -> [add ssh](https://github.com/settings/ssh)
* [ ] `git config --global user.name "Robbert Korving"` -> `git config --global user.email "r.korving@gmail.com"` -> `git config --global core.editor vim`
* [ ] `sudo add-apt-repository ppa:webupd8team/atom` -> `sudo apt-get update` -> `sudo apt-get install atom`
 * [ ] `apm login` -> `apm stars -i`
* [ ] add `deb http://repository.spotify.com stable non-free` to `/etc/apt/sources.list.d/spotify.list`
 * [ ] `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59` -> `sudo apt-get update` -> `sudo apt-get install spotify-client`
* [ ] `sudo add-apt-repository ppa:rvm/smplayer` -> `sudo apt-get update` -> `sudo apt-get install smplayer`
 * [ ] `voorkeuren` -> enable `sluiten wanneer klaar...`, `video: videobestanden beeldvullen...`, `audio: Volume standaard...`, `toetsenbord: Ctrl+1 50%, +2 100%, +3 200%`
* [ ] add `deb http://download.virtualbox.org/virtualbox/debian trusty contrib` to `/etc/apt/sources.list.d/virtualbox.list`
 * [ ] `wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -`
 * [ ] `sudo apt-get update` -> `sudo apt-get install virtualbox-4.3`
* [ ] install [vagrant](https://www.vagrantup.com/downloads)
* [ ] rbenv
 * [ ] git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
 * [ ] git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 * [ ] git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
 * [ ] git clone https://github.com/ianheggie/rbenv-binstubs.git ~/.rbenv/plugins/rbenv-binstubs
 * [ ] git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
 * [ ] `~/.bashrc`
 ```bash
 # rbenv
 export PATH="$HOME/.rbenv/bin:$PATH"
 eval "$(rbenv init -)"
 ```
* [ ] `curl -sL https://deb.nodesource.com/setup | sudo bash -` -> `sudo apt-get install nodejs`
* [ ] `sudo add-apt-repository ppa:team-xbmc/ppa` -> `sudo apt-get update` -> `sudo apt-get install kodi`
 * [ ] `sudo ufw allow from 192.168.1.0/24` <- lan ip range
* [ ] [dropbox](https://www.dropbox.com/downloading?src=index)
  * [ ] before installing `sudo apt-get install python-gpgme`
* [ ] [Wireless Xbox 360 controller reciever fix](http://www.omgubuntu.co.uk/2014/06/ubuntu-xbox-controller-support-xboxdrv-driver) may not be needed in next versions of Ubuntu
 * [ ] `sudo apt-add-repository ppa:rael-gc/ubuntu-xboxdrv`
 * [ ] `sudo apt-get update`
 * [ ] `sudo apt-get install ubuntu-xboxdrv`
 * [ ] reboot!
* [ ] [Indicator for Lock Keys](http://packages.ubuntu.com/search?keywords=indicator-keylock) will be in the universe repo from Ubuntu 15.04 and on
 * [ ] `sudo apt-add-repository ppa:tsbarnes/indicator-keylock`
 * [ ] `sudo apt-get update`
 * [ ] `sudo apt-get install indicator-keylock`
 * [ ] logout and login again
* [ ] [Linux devices manager for the Logitech Unifying Receiver](https://github.com/pwr/Solaar) will be in the universe repo from Ubuntu 15.04 and on
 * [ ] `sudo apt-add-repository ppa:daniel.pavel/solaar`
 * [ ] `sudo apt-get update`
 * [ ] `sudo apt-get install solaar-gnome3`
 * [ ] logout and login again
* [ ] [gimp](http://www.gimp.org/)
 * [ ] `sudo add-apt-repository ppa:otto-kesselgulasch/gimp`
 * [ ] `sudo apt-get update`
 * [ ] `sudo apt-get install gimp`
 * [ ] `bewerken` -> `voorkeuren` -> `interface` -> `taal` = `Engels [en_US]` -> restart gimp
 * [ ] `window` -> `single window mode`
* [ ] [git-cola](https://github.com/git-cola/git-cola)
 * [ ] `cd compound` -> `git clone https://github.com/git-cola/git-cola.git`
 * [ ] `~/.bashrc`, the following exposes `git cola` and `git dag` as terminal commands
 ```bash
 # git-cola
 export PATH="$HOME/compound/git-cola/bin:$PATH"
 ```
