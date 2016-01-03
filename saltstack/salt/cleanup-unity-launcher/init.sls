{% set user = salt['pillar.get']('user', 'vagrant') %}

gsettings set com.canonical.Unity.Launcher favorites "['application://firefox.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']":
  cmd.run:
    - user: {{ user }}
    - env:
      - DISPLAY: ':0'
