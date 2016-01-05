ubuntu-desktop:
  pkg.installed
sudo apt-get install -y $(check-language-support):
  cmd.run:
    - onlyif: "[ $(check-language-support) ]"

