#!/bib/bash

# Deploy AKS fresh cluster first

# Create an SA password
kubectl create secret generic mssql --from-literal=MSSQL_SA_PASSWORD="MyC0m9l&xP@ssw0rd"

# Create storage
kubectl apply -f manifests/mysql-pvc.yaml

# Verify PVC
kubectl describe pvc mssql-data

# Deploy SQL
kubectl apply -f manifests/mysql-deployment.yaml

# Verify
kubectl get pods
kubectl get services
