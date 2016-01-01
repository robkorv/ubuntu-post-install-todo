ubuntu-post-install-todo
========================

My task list after intalling Ubuntu 14.04

* [ ] `sudo ufw enable`
* [ ] `sudo apt-get install ubuntu-restricted-extras vim git gdebi-core byobu autoconf bison build-essential libssl-dev libyaml-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev libgsl0-dev curl python-gpgme gnucash python-dev python-pip ruby ruby-dev kdiff3-qt`
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
* [ ] use byobu as default shell -> `ctrl+alt+t` -> profiel bewerken -> opdracht aangepast `/usr/bin/byobu`
* [ ] Install [Chrome](https://www.google.nl/chrome/browser/desktop/index.html)
* [ ] Start `google-chrome`
 * [ ] In settings disable `Aanbieden om je internet wachtwoorden...`, `Aanbieden om pagina's te vertalen...`
 * [ ] login to [Netflix](http://www.netflix.com/), create a shortcut for it
 * [ ] edit `~/.local/share/applications//chrome-http___www.netflix.com_WiHome.desktop`, change `--app=` to `--kiosk `
 * [ ] the same for [nos](http://nos.nl/)
* [ ] [generate ssh](https://help.github.com/articles/generating-ssh-keys/) -> [add ssh](https://github.com/settings/ssh)
* [ ] `git config --global user.name "Robbert Korving"` -> `git config --global user.email "r.korving@gmail.com"` -> `git config --global core.editor vim` -> `git config --global merge.tool kdiff3`
* [ ] [git-up](https://github.com/aanand/git-up#install)
* [ ] [spotify](https://www.spotify.com/nl/download/linux)
* [ ] [smplayer](http://smplayer.sourceforge.net/en/downloads) -> `sudo apt-get update` -> `sudo apt-get install smplayer`
 * [ ] `voorkeuren` -> enable `sluiten wanneer klaar...`, `video: videobestanden beeldvullen...`, `audio: Volume standaard...`, `toetsenbord: Ctrl+1 50%, +2 100%, +3 200%`
* [ ] [virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads#Debian-basedLinuxdistributions)
* [ ] install [vagrant](https://www.vagrantup.com/downloads)
* [ ] [nodejs](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
* [ ] [kodi](http://kodi.wiki/view/HOW-TO:Install_Kodi_for_Linux#Installing_Kodi_on_Ubuntu-based_distributions)
 * [ ] `sudo ufw allow from 192.168.1.0/24` <- lan ip range
* [ ] [dropbox](https://www.dropbox.com/downloading?src=index)
  * [ ] before installing `sudo apt-get install python-gpgme`
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
* [ ] [git-cola](https://github.com/git-cola/git-cola#run-from-source)
* [ ] [thefuck](https://github.com/nvbn/thefuck#manual-installation)