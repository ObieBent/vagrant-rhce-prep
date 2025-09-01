# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "controller" do |controller|
    controller.vm.box = "generic/rhel9"
    controller.vm.hostname = "controller"
    controller.vm.provider "qemu" do |qe|
      qe.cpus = 4
      qe.memory = 4096
      qe.ssh_auto_correct = true
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.8"
    end
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = "generic/rhel9"
    node1.vm.hostname = "node1"
    node1.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_auto_correct = true
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.9"
    end
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "generic/rhel9"
    node2.vm.hostname = "node2"
    node2.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_auto_correct = true
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.10"
    end
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "generic/rhel9"
    node3.vm.hostname = "node3"
    node3.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_auto_correct = true
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.11"
    end
  end
  
  config.vm.define "node4" do |node4|
    node4.vm.box = "generic/rhel9"
    node4.vm.hostname = "node4"
    node4.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_auto_correct = true
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.12"
    end
  end

  config.vm.define "node5" do |node5|
    node5.vm.box = "generic/rhel9"
    node5.vm.hostname = "node5"
    node5.vm.provider "qemu" do |qe|
      qe.cpus = 1
      qe.memory = 1024
      qe.ssh_auto_correct = true
      qe.extra_netdev_args = "net=172.25.250.0/24,dhcpstart=172.25.250.13"
    end
  end
end
