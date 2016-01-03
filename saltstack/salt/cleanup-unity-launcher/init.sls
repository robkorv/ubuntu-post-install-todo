# https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles#Editing_its_main_characteristics
{% set user = salt['pillar.get']('user', 'vagrant') %}

gsettings set com.canonical.Unity.Launcher favorites "['application://firefox.desktop', 'application://spotify.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']":
  cmd.run:
    - user: {{ user }}
    - env:
      - DISPLAY: ':0'
