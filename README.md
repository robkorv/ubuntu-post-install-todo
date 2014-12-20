ubuntu-post-install-todo
========================

My task list after intalling Ubuntu

* [ ] `sudo ufw enable`
* [ ] `sudo apt-get install ubuntu-restricted-extras vim git gdebi-core byobu autoconf bison build-essential libssl-dev libyaml-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev libgsl0-dev curl`
* [ ] `sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora`
* [ ] `sudo apt-get update` -> `sudo apt-get dist-upgrade`
* [ ] Activate firefox sync -> restart Firefox
* [ ] Logon to LastPass
  * [ ] `Voorkeuren` -> `Automatisch aanmeldgegevens invullen`, bij geavanceerd `Zoeken naar ...` uitzetten
 * [ ] Fire Gestures, disable all but `Muis gebaren`
* [ ] Cleanup Unity bar
* [ ] `System settings`
  * [ ] `Helderheid en vergrendelen` -> disable `Pauzestand`, `Mijn wachtwoord vereisen ...`
  * [ ] `Schermen` disable `Plakranden`
  * [ ] `Gebruikers accounts` -> enable `Automatisch aanmelden`
  * [ ] `Software & Updates` -> `Extra stuurprogramma's` enable tested binary driver
* [ ] `sudo vi /etc/default/grub` -> `GRUB_TIMEOUT=5`, `GRUB_CMDLINE_LINUX_DEFAULT=""`, `GRUB_TERMINAL=console`
* [ ] `sudo update-grub` -> `sudo reboot`
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
