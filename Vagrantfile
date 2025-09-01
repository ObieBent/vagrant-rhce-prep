# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "controller" do |controller|
    controller.vm.box = "generic/rhel9"
    controller.vm.hostname = "controller"
    controller.vm.synced_folder ".", "/vagrant-rhce-prep"
    controller.vm.provider "qemu" do |qe|
      qe.cpus = 4
      qe.memory = 4096
      qe.ssh_port = 50023
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.8"
    end
    controller.vm.provision "shell", inline: <<-SHELL
      echo -e "#{nodes.map { |h, i| "#{i} #{h}" }.join("\\n")}" | sudo tee -a /etc/hosts
      cp /vagrant-rhce-prep/bashrc /etc/bashrc 
      chmod 644 /etc/hosts
      source /etc/bashrc
    SHELL
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = "generic/rhel9"
    node1.vm.hostname = "node1"
    node1.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_port = 50024
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.9"
    end
    node1.vm.provision "shell", inline: <<-SHELL
      echo -e "#{nodes.map { |h, i| "#{i} #{h}" }.join("\\n")}" | sudo tee -a /etc/hosts
      cp /vagrant-rhce-prep/bashrc /etc/bashrc 
      chmod 644 /etc/hosts
      source /etc/bashrc
    SHELL
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "generic/rhel9"
    node2.vm.hostname = "node2"
    node2.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_port = 50025
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.10"
    end
    node2.vm.provision "shell", inline: <<-SHELL
      echo -e "#{nodes.map { |h, i| "#{i} #{h}" }.join("\\n")}" | sudo tee -a /etc/hosts
      cp /vagrant-rhce-prep/bashrc /etc/bashrc 
      chmod 644 /etc/hosts
      source /etc/bashrc
    SHELL
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "generic/rhel9"
    node3.vm.hostname = "node3"
    node3.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_port = 50026
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.11"
    end
    node3.vm.provision "shell", inline: <<-SHELL
      echo -e "#{nodes.map { |h, i| "#{i} #{h}" }.join("\\n")}" | sudo tee -a /etc/hosts
      cp /vagrant-rhce-prep/bashrc /etc/bashrc 
      chmod 644 /etc/hosts
      source /etc/bashrc
    SHELL
  end
  
  config.vm.define "node4" do |node4|
    node4.vm.box = "generic/rhel9"
    node4.vm.hostname = "node4"
    node4.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_port = 50027
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.12"
    end
    node4.vm.provision "shell", inline: <<-SHELL
      echo -e "#{nodes.map { |h, i| "#{i} #{h}" }.join("\\n")}" | sudo tee -a /etc/hosts
      cp /vagrant-rhce-prep/bashrc /etc/bashrc 
      chmod 644 /etc/hosts
      source /etc/bashrc
    SHELL
  end

  config.vm.define "node5" do |node5|
    node5.vm.box = "generic/rhel9"
    node5.vm.hostname = "node5"
    node5.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_port = 50028
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.13"
    end
    node5.vm.provision "shell", inline: <<-SHELL
      echo -e "#{nodes.map { |h, i| "#{i} #{h}" }.join("\\n")}" | sudo tee -a /etc/hosts
      cp /vagrant-rhce-prep/bashrc /etc/bashrc 
      chmod 644 /etc/hosts
      source /etc/bashrc
    SHELL
  end
end
