#!/bin/bash

# Terminate the namespace
kubectl delete namespace devops-tools

# Remove the pv
kubectl delete pv jenkins-pv-volume
