# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {
  'app' => {'memory' => '2048', 'cpus' => '1', 'ip' => '172.27.2.2'}
  'nfs' => {'memory' => '512', 'cpus' => '1', 'ip' => '172.27.2.3' }
}

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"

  vms.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.hostnaem = "#{name}"
      machine.vm.network "private_network", ip: conf['ip'], dns: "8.8.8.8"
      machine.vm.provider "virtualbox" do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end

    if "#{name}" == "nfs"
      machine.vm.provision "shell", path: "./scripts/provision.sh"
    end
  end
end
