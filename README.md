ubuntu-post-install-todo
========================

My task list after intalling Ubuntu

* [ ] `sudo apt-get install ubuntu-restricted-extras`
* [ ] `sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora`
* [ ] `sudo apt-get update` -> `sudo apt-get dist-upgrade`
* [ ] Activate firefox sync -> restart Firefox
* [ ] Logon to LastPass
  * [ ] `Voorkeuren` -> `Automatisch aanmeldgegevens invullen`, bij geavanceerd `Zoeken naar ...` uitzetten
* [ ] Cleanup Unity bar
* [ ] `System settings`
  * [ ] `Helderheid en vergrendelen` -> disable `Pauzestand`, `Mijn wachtwoord vereisen ...`
  * [ ] `Schermen` disable `Plakranden`
  * [ ] `Gebruikers accounts` -> enable `Automatisch aanmelden`
  * [ ] `Software & Updates` -> `Extra stuurprogramma's` enable tested binary driver
* [ ] `sudo vi /etc/default/grub` -> `GRUB_TIMEOUT=5`, `GRUB_CMDLINE_LINUX_DEFAULT=""`, `GRUB_TERMINAL=console`
* [ ] `sudo update-grub` -> `sudo reboot`
