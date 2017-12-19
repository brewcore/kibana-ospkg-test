# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "xenial64" do |xenial64|
    xenial64.vm.box = "ubuntu/xenial64"

    xenial64.vm.provision "shell", inline: <<-SHELL
      wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
      apt-get update
      apt-get install apt-transport-https
      echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-6.x.list
      apt-get update
      apt-get install -y kibana
      service kibana start
      systemctl enable kibana
    SHELL
  end

  config.vm.define "centos6" do |centos6|
    centos6.vm.box = "centos/6"

    centos6.vm.provision "shell", inline: <<-SHELL
      cp /vagrant/kibana.repo /etc/yum.repos.d/
      rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
      sudo yum install -y kibana
      service kibana start
      chkconfig kibana on
    SHELL
  end
end
