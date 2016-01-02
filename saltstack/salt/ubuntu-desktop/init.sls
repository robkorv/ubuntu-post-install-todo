ubuntu-desktop:
  pkg.installed
sudo apt-get install -y $(check-language-support):
  cmd.run:
    - unless: test -z $(check-language-support)

