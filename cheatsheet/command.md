# Useful Kubectl command

## Cluster

### 1. Check nodes

```bash
kubectl get nodes
kubectl top nodes
```

### 2. Cluster info

```bash
kubectl cluster-info
```

## Pod

### 1. Get pod

```bash
# kubectl get pods -n your_namespace
kubectl get pods -n default
```

### 2. Describe pod

```bash
# kubectl describe pods your_podname -n your_namespace
kubectl describe pods aaabbb -n default
```
