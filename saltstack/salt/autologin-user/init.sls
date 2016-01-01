/etc/lightdm/lightdm.conf:
  file.managed:
    - source: salt://autologin-user/files/lightdm.conf
    - user: root
    - group: root
    - mode: 0644
