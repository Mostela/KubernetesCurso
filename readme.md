# **KUBERNETES DOCUMENTAÇAO Basico - Joao Carlos**

## Seguir as orderns e comandos do basico
### Dividos em pastas para melhor consulta posteriormente

#### Pode executar os mesmo no Kops no AWS (Nao quis pagar $Dolar$ ta caro R$ 5,59)

---

    sudo apt-get vagrant
    vagrant up
    
Dentro da maquina criada rodar o comando
    
    chmod -x config_vagrant.sh
    sudo ./config_vagrant.sh
    
---

### Welcome Man!

##### Segue se o tutorial para criação de Pod no Kubernets
Execute os comandos nas seguintes ordens

    kubectl create -f <FILENAME.yml>
    kubectl describe pod <PODNAME>
    kubectl port-forward <PODNAME> <PORTALOCAL>:<PORTAPOD>
    
##### Para realizar o redirecionamento de portas use o comando acima
##### Caso queira apenas acessar o Pod pode utilizar o comando abaixo

    kubectl expose pod <PODNAME> --type=NodePort --name <PODNAMEINICIO>-service
    
##### Você irá criar um serviço que ira export a porta do Pod

##### Obtendo a porta do pod com o minikube

    minikube service <PODSERVICENAME> --url
    
##### Você terá acesso ao log da aplicação

    kubectl attach <PODNAME>
     
##### Executa comandos no Pod

    kubectl exec <PODNAME> -- <COMANDO>
    kubectl describe <ITEM> <ITEMNAME>
    
##### Para criar um Pod
    kubectl run -i --tty busybox --image:busybox --restart=N