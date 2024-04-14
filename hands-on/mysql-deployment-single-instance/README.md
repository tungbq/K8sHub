# MySQL deployment

Run a single-instance stateful MYSQL application

## Deploy

```bash
kubectl apply -f mysql_deployment.yaml
```

## Verify

```bash
# Deployment inspecting
kubectl describe deployment mysql
# Pods checking
kubectl get pods -l app=mysql
# PVC
kubectl describe pvc mysql-pv-claim
```

## Access to the pod

```bash
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword
```
