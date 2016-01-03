# install rubocop
ruby:
  pkg.installed
ruby-dev:
  pkg.installed

# https://github.com/bbatsov/rubocop#installation
rubocop:
  gem.installed:
    - require:
      - pkg: ruby

# https://github.com/aanand/git-up#install
git-up:
  gem.installed:
    - require:
      - pkg: ruby
      - pkg: ruby-dev
