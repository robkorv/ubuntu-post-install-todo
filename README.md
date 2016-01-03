ubuntu-post-install-todo
========================

This is my [post install todo list for Ubuntu](TODO.md).

I just started to automate the process with [SaltStack](https://github.com/saltstack/salt).


## Making a test run

### Requirements

* [VirtualBox (5.0.x)](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant (1.8.x)](https://www.vagrantup.com/downloads.html)

### Fire it up

> * `vagrant plugin install vagrant-cachier` installs [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier)
> * `vagrant up` This command creates and configures guest machines according to your Vagrantfile.
> * `vagrant provision --provision-with update` Runs the update provisioner against the running Vagrant managed machine.
> * `vagrant ssh` This will SSH into a running Vagrant machine and give you access to a shell.
> * `vagrant halt` This command shuts down the running machine Vagrant is managing.
> * `vagrant reload` The equivalent of running a halt followed by an up.
> * `vagrant destroy` This command stops the running machine Vagrant is managing and destroys all resources that were created during the machine creation process.
>
> -- [vagrant - Command-Line Interface](https://docs.vagrantup.com/v2/cli/index.html)


## Inner workings

All source code is editable from outside the box but run from inside the box.
This means that every script is expecting to be run from `~/compound/ubuntu-post-install-todo`
inside a secure shell with the box.

> * `script/bootstrap` is used solely for fulfilling dependencies of the project.
> * `script/update` is used to update the project after a fresh pull.
> * `script/test` is used to run the test suite of the application.
>
> -- [github - scripts-to-rule-them-all](https://github.com/github/scripts-to-rule-them-all/blob/master/README.md#the-scripts)


## Using pillar to provision outside of Vagrant

The defaults are for the Vagrant box, but you can use your own. See [saltstack/pillar.example](https://github.com/robkorv/ubuntu-post-install-todo/blob/master/saltstack/pillar.example).
Be sure that you only run the bash files in `script` outside Vagrant on a fresh [Ubuntu netboot 14.04](http://nl.archive.ubuntu.com/ubuntu/dists/trusty-updates/main/installer-amd64/current/images/netboot/) or on a system that is already provisioned with this salt repo.

* create `top.sls` in `saltstack/pillar`
```yaml
base:
  '*':
    - data
```
* create `data.sls` in `saltstack/pillar`
```yaml
user:
  vagrant
git-config:
  user:
    name: John Doe
    email: email@example.org
  core:
    editor: vim
  merge:
    tool: kdiff3
  whom: vagrant
```


## Inspired by

* https://github.com/github/scripts-to-rule-them-all
* https://docs.saltstack.com/en/2015.5/
* https://docs.saltstack.com/en/2015.5/topics/best_practices.html
* https://docs.saltstack.com/en/2015.5/topics/development/conventions/formulas.html#conventions-formula
* https://docs.saltstack.com/en/2015.5/ref/states/all/index.html
* https://docs.saltstack.com/en/2015.5/topics/yaml/index.html
