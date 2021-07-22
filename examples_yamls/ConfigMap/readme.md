## ConfigMap

Sao usados para adicionar as configuraçoes ao pod antes dele iniciar
para serem criadas deve ser usar o comando abaixo

    kubectl create configmap <Nome> --from-file=<Arquivo de configuraçao>
    
    kubectl get configmap 