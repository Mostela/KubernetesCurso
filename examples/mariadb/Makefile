NAMESPACE = "database"
NAME = "mariadb"
install:
	helm install $(NAME) bitnami/mariadb --namespace $(NAMESPACE) --create-namespace

delete:
	helm delete $(NAME) --namespace $(NAMESPACE)

connect:
	kubectl port-forward mariadb-0 3306:3306 -n $(NAMESPACE)