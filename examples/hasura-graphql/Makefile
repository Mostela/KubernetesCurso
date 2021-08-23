database:
	helm install postgress bitnami/postgresql
install:
	kubectl apply -f pod_hasura.yml
delete:
	kubectl delete -f pod_hasura.yml
	helm delete postgress