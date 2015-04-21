# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.0"

Vagrant.configure(2) do |config|
  # ssh key
  config.ssh.insert_key = false

  # box
  config.vm.box = "coreos-stable"
  config.vm.box_version = ">= 308.0.1"
  config.vm.box_url = "http://stable.release.core-os.net/amd64-usr/current/coreos_production_vagrant.json"

  # network
  config.vm.network :private_network, ip: "192.168.33.11"

  # sync folder
  config.vm.synced_folder ".", "/vagrant"

  # hostname
  config.vm.hostname = "blueprint.local"

  # hostmanager
  config.hostmanager.enabled = false
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.hostmanager.aliases = %w()
  config.vm.provision "shell", inline: "touch /etc/hosts"
  config.vm.provision :hostmanager
  
  # provider
  config.vm.provider :virtualbox do |v|
    v.check_guest_additions = false
    v.functional_vboxsf     = false
  end

  # install docker compose
   $docker_compose_install_script = <<SCRIPT
   mkdir -p /opt/bin
   curl -sL https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /opt/bin/docker-compose
   chmod +x /opt/bin/docker-compose
SCRIPT
   config.vm.provision "shell", inline: $docker_compose_install_script 

  # docker run
  config.vm.provision "shell",
    inline: "docker-compose -f /vagrant/docker-compose.yml up -d"
end
