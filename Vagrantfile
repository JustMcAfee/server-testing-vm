# -*- mode: ruby -*-
# vi: set ft=ruby :

# vagrant plugin install vagrant-share vagrant-persistent-storage vagrant-serverspec

Vagrant.configure("2") do |config|

  config.vm.box = "boxcutter/ubuntu1604"
  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"

    config.persistent_storage.enabled = true
    config.persistent_storage.location = "disks/storage.vdi"
    config.persistent_storage.size = 5000
    config.persistent_storage.mountname = 'storage'
    config.persistent_storage.filesystem = 'btrfs'
    config.persistent_storage.mountpoint = '/mnt/storage-array'
    config.persistent_storage.use_lvm = false
  end

  config.vm.hostname = "testserver"
  config.vm.define :testserver do |lamp|
  end

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.galaxy_role_file = "requirements.yml"
    ansible.playbook = "test.yaml"
  end

  config.vm.provision :serverspec do |spec|
    spec.pattern = 'spec/*_spec.rb'
  end
end
