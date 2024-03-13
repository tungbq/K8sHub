#!/bib/bash

# Deploy AKS fresh cluster first


# Create storage
kubectl apply -f manifests/mysql-pvc.yaml

# Verify
kubectl describe pvc mssql-data
