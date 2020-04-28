IMAGE_NAME = "hashicorp/bionic64"
N = 2

Vagrant.configure("2") do |config|
    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 2
    end

  config.vm.define "k8s-master", primary: true do |master|
    master.vm.network :private_network, ip: "192.168.50.10"
    master.vm.hostname = "masterk8s"
    master.vm.box = IMAGE_NAME
    master.vm.synced_folder ".", "/home/vagrant/k8sCurso"
    master.vm.provision "ansible" do |ansible|
        ansible.playbook = "kubernetes-setup/master-playbook.yml"
        ansible.extra_vars = {
                              node_ip: "192.168.50.1",
                          }
    end
  end

  # Criando os nodes
  (1..N).each do |i|
          config.vm.define "node-#{i}" do |node|
              node.vm.box = IMAGE_NAME
              node.vm.network :private_network, ip: "192.168.50.#{i + 10}"
              node.vm.hostname = "node-#{i}"
              node.vm.provision "ansible" do |ansible|
                  ansible.playbook = "kubernetes-setup/node-playbook.yml"
                  ansible.extra_vars = {
                      node_ip: "192.168.50.#{i + 10}",
                  }
              end
          end
      end

end