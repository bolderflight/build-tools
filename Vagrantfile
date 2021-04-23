# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Box Settings
  config.vm.box = "generic/ubuntu2004"
  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
  # Folder Settings
  config.vm.synced_folder "./build", "/home/vagrant/work", create: true
  # Provision Settings
  config.vm.provision "shell", path: "bootstrap.sh"
end
