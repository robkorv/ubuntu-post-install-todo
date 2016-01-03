/etc/lightdm/lightdm.conf:
  file.managed:
    - source: salt://autologin/files/lightdm.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
