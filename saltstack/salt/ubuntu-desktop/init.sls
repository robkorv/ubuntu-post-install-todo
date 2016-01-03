ubuntu-desktop:
  pkg.installed
sudo apt-get install -y $(check-language-support):
  cmd.run:
    - unless: "[ -z $(check-language-support) ]"

