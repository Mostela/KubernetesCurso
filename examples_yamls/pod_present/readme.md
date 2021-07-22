## Pod Present

Para que o mesmo funcione e necessario ativar o settings.k8s.io/v1alpha1

Isso pode ser ativado no Minikube da seguinte forma

    minikube start --extra-config=apiserver.runtime-config=settings.k8s.io/v1alpha1=true
    
Ai so rodar os codigos na ordem que quiser e ver a aplicaçao nos pods