#!/bin/bash

# Deploy AKS fresh cluster first

export KUBECONFIG=../aks-fresh-cluster/k8s_config/azurek8s
kubectl get nodes
kubectl top nodes

# Check cluster
kubectl cluster-info

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
