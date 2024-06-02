#!/bin/bash

kubectl create namespace devops-tools || true
kubectl apply -f yamls/sevice_account.yaml
kubectl apply -f yamls/volume.yaml

kubectl apply -f yamls/deployment.yaml
kubectl get deployments -n devops-tools

kubectl apply -f yamls/services.yaml
kubectl get services -n devops-tools
