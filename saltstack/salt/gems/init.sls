# install rubocop
ruby:
  pkg.installed
ruby-dev:
  pkg.installed
rubocop:
  gem.installed:
    - require:
      - pkg: ruby
git-up:
  gem.installed:
    - require:
      - pkg: ruby
      - pkg: ruby-dev
