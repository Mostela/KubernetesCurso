# Como subir seu propio cluster
## Introdução

Essa serie de comandos você deverá ter um cluster com 3 maquinas virtuais
sendo uma delas a master e duas workers já bem configuradas para ser usadas
com tudo pronto para vocẽ estudar, testar ou o que for.

## Instalando as ferramentas

1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
1. Install [Ansible](http://docs.ansible.com/ansible/latest/intro_installation.html)

Para maquinas em Debian como Ubuntu os comandos já estão abaixo

    sudo apt install -y ansible
    
    sudo apt install -y vagrant
    
    sudo apt install -y virtualbox 

## Kubernetes - Ansible - Vagrant