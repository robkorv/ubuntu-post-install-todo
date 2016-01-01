# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version '>= 1.8.0'

Vagrant.configure(2) do |config|
  config.vm.define 'desktop' do |desktop|
    # enable virtualbox gui... because it's a desktop! :)
    desktop.vm.provider 'virtualbox' do |virtualbox|
      virtualbox.gui = true
      virtualbox.memory = 1024 * 2
      virtualbox.cpus = 2
      virtualbox.customize ['modifyvm', :id, '--vram', '64']
      virtualbox.customize ['modifyvm', :id, '--accelerate3d', 'on']
    end

    # load Ubuntu 14.04 LTS (Trusty Tahr)
    desktop.vm.box = 'ubuntu/trusty64'

    # disable default share
    desktop.vm.synced_folder '.', '/vagrant', disabled: true
    # mimic desktop dir structure
    desktop.vm.synced_folder '.', '/home/vagrant/compound/ubuntu-post-install-todo'

    # bootstrap the environment
    desktop.vm.provision 'bootstrap',
                         type: 'shell',
                         inline: '/bin/sh compound/ubuntu-post-install-todo/script/bootstrap',
                         privileged: false
    # update the environment
    desktop.vm.provision 'update',
                         type: 'shell',
                         inline: '/bin/sh compound/ubuntu-post-install-todo/script/update',
                         run: 'always',
                         privileged: false
  end
end
