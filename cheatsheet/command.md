# Useful Kubectl command

## 1. Cluster

### Check nodes

```bash
kubectl get nodes
kubectl top nodes
```

### Cluster info

```bash
kubectl cluster-info
```

## 2. Pod

### Get pod

```bash
# kubectl get pods -n your_namespace
kubectl get pods -n default
```

### Describe pod

```bash
# kubectl describe pods your_podname -n your_namespace
kubectl describe pods aaabbb -n default
```

### Log pod

```bash
# kubectl logs -f your_podname -n your_namespace
kubectl logs -f your_podname -n default
```
