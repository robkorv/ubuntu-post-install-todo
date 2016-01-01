/home/vagrant/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml:
  file.managed:
    - source: salt://gnome-terminal/files/%gconf.xml
    - user: vagrant
    - group: vagrant
    - mode: 0600
    - makedirs: true
    - dir_mode: 0700
