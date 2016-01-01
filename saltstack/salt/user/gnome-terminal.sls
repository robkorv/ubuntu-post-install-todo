{% from 'user/map.jinja' import user with context %}

/home/{{ user }}/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml:
  file.managed:
    - source: salt://user/files/%gconf.xml
    - user: {{ user }}
    - group: {{ user }}
    - mode: 0600
    - makedirs: true
    - dir_mode: 0700
