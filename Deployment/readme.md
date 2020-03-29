# Deployment

#### O deployment serve para subir mais de um Pod com N replicas
#### Ele deve ser escrito com base em um modelo como o do arquivo no basico

## Comandos bases
    kubectl create -f <FILENAME>
    
Ainda continua ja que serve para criar um Deploy. Que criar a replica
de Pods requisitada

    kubectl get deploy
    kubectl describe deploy <deployName>
    kubectl delete deploy <deployName>
    kubectl scale deploy  <deployName> --replicas=4
    
Em ordem
1. Lista de deploy em execuçao e seu status
1. Obtem detalhes do deploy
1. Deleta o mesmo. Nao adianta excluir o pod já que ele ira replicar
1. Use para escalonar horizontamente os serviços mudando a quantidade em execução

## _nodeSelector_
Serve para rodar um pod somente em caso especificio de um node
o label especificado. Senao fica em aguardo

## _healhCheck [livenessProbe]_
Serve para evitar erros em produção voltando resultados dos pods

    livenessProbe:
        httpGet:              # Metodo utilizado
            port: nodejs-port #Nome ou numero da porta a ser usada
            path: /           # Endereço | Pode usar-se healht
            initialDelaySeconds: 15  # Tempo até iniciar
            timeoutSeconds: 30       # Tempo que deve durar