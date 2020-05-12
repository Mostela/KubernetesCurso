# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "geerlingguy/ubuntu1604"



  # Configura a maquina para consumo de memoria e cpu

  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.cpus = 1
    v.linked_clone = true
  end

  # Define three VMs with static private IP addresses.
  boxes = [
    { :name => "master", :ip => "192.168.33.71" },
    { :name => "node1", :ip => "192.168.33.72" },
    { :name => "node2", :ip => "192.168.33.73" }
  ]

  # Provision each of the VMs.
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.synced_folder ".","/home"
      config.vm.network :private_network, ip: opts[:ip]

      # Provision all the VMs in parallel using Ansible after last VM is up.
      if opts[:name] == "node2"
        config.vm.provision "ansible" do |ansible|
          ansible.compatibility_mode = "2.0"
          ansible.playbook = "master-playbook.yml"
          ansible.limit = "all"
          ansible.become = true
          ansible.groups = {
            "kubernetes" => ["master", "node1", "node2"],
            "kubernetes_master" => ["master"],
            "kubernetes_master:vars" => {
              kubernetes_role: "master",
              swapfile_path: "/dev/mapper/vagrant--vg-swap_1",
              kubernetes_apiserver_advertise_address: "192.168.33.71"
            },
            "kubernetes_node" => ["node1", "node2"],
            "kubernetes_node:vars" => {
              kubernetes_role: "node",
              swapfile_path: "/dev/mapper/vagrant--vg-swap_1"
            }
          }
        end
      end
    end
  end

end