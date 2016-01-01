/etc/default/grub:
  file.managed:
    - source: salt://grub/files/grub
    - user: root
    - group: root
    - mode: 0644
sudo update-grub:
  cmd.wait:
    - watch:
      - file: /etc/default/grub
