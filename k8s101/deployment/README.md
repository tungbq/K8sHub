# Deployment

## Deploy

```bash
kubectl apply -f k8s101/Deployment/deployment.yaml
```

## Verify

```bash
kubectl get deployments

kubectl get pods
```

## Result

```bash
➜  deployment git:(101-deployment) ✗ kubectl get deployments

NAME                READY   UP-TO-DATE   AVAILABLE   AGE
sample-deployment   3/3     3            3           4m41s
➜  deployment git:(101-deployment) ✗ kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
sample-deployment-5595794bc9-9pklc   1/1     Running   0          4m43s
sample-deployment-5595794bc9-bhgpt   1/1     Running   0          4m43s
sample-deployment-5595794bc9-rnb2s   1/1     Running   0          4m43s
➜  deployment git:(101-deployment) ✗
```

## Cleanup

```bash
kubectl delete -f k8s101/Deployment/deployment.yaml
```
