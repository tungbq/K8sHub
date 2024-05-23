#!/bin/bash

kubectl create namespace devops-tools || true
kubectl apply -f yamls/service_account.yaml
kubectl apply -f yamls/volumne.yaml

kubectl apply -f yamls/deployment.yaml
kubectl get deployments -n devops-tools

kubectl apply -f yamls/services.yaml
kubectl get services -n devops-tools
