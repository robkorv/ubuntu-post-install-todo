/etc/NetworkManager/NetworkManager.conf:
  file.managed:
    - source: salt://network-indicator/files/NetworkManager.conf
    - user: root
    - group: root
    - mode: 0644
