ubuntu-post-install-todo
========================

This is my [post install todo list for Ubuntu](TODO.md).

I just started to automate the process with [SaltStack](https://github.com/saltstack/salt).


## Making a test run

### Requirements

* [VirtualBox (5.0.x)](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant (1.8.x)](https://www.vagrantup.com/downloads.html)

### Fire it up

* `vagrant up` brings the box up, it will bootstrap on the first up, update on a next up
* `vagrant provision --provision-with update` will update a running box
* `vagrant ssh` starts a secure shell connection with a running box
* `vagrant halt` gracefully brings the box to a halt
* `vagrant destroy` removes all traces of the box, bootstrap will start again on the next up


## Inner workings

All source code is editable from outside the box but run from inside the box.
This means that every script is expecting to be run from `~/compound/ubuntu-post-install-todo`
inside a secure shell with the box.

> * `script/bootstrap` is used solely for fulfilling dependencies of the project.
> * `script/update` is used to update the project after a fresh pull.
> * `script/test` is used to run the test suite of the application.
>
> -- [scripts-to-rule-them-all](https://github.com/github/scripts-to-rule-them-all/blob/master/README.md#the-scripts)


## Inspired by

* https://github.com/github/scripts-to-rule-them-all
* https://docs.saltstack.com/en/2015.5/
* https://docs.saltstack.com/en/2015.5/topics/best_practices.html
* https://docs.saltstack.com/en/2015.5/ref/states/all/index.html
