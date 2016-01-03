{% set user = salt['pillar.get']('user', 'vagrant') %}
{% set email = salt['pillar.get']('git-config:user:email', 'your_email@example.com') %}

/home/{{ user }}/.ssh:
  file.directory:
    - user: {{ user }}
    - group: {{ user }}
    - mode: 0700
ssh-keygen -t rsa -b 4096 -C "{{ email }}" -f "/home/{{ user }}/.ssh/github_rsa" -P "":
  cmd.run:
    - user: {{ user }}
    - creates: /home/{{ user }}/.ssh/github_rsa
    - require:
      - file: /home/{{ user }}/.ssh
