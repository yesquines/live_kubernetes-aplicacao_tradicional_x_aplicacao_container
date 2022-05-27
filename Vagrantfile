# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vm.network "private_network", ip: "172.27.2.2", dns: "8.8.8.8"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = '2048'
    vb.cpus = '1'
  end
end
