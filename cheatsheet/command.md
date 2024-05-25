# Useful Kubectl command

## 0. Common

```bash
kubectl explain deployment
kubectl get <resource> -n <namespace>      # In specific namespace
kubectl get <resource> -o yaml             # output in YAML format
kubectl get <resource> -o json             # output in JSON format
kubectl describe <resource> -n <namespace> # In specific namespace
```

## 1. Cluster

### Check nodes

```bash
kubectl get nodes
kubectl top nodes
```

### Cluster info

```bash
kubectl cluster-info
kubectl cluster-info dump #  Further debug and diagnose cluster problems
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

## 3. Service

### Get pod

```bash
# kubectl get svc -n your_namespace
kubectl get svc -n default
```

## 4. Port-forward

### Forward a service

```bash
kubectl port-forward svc/service_name local_port:service_port
# E.g: kubectl port-forward svc/nginx-ingress 8080:80
```
