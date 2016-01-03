# install rubocop
ruby:
  pkg.installed
rubocop:
  gem.installed:
    - require:
      - pkg: ruby
