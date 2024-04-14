# Services 101

## Deployment

```bash
kubectl apply -f ../deployment/deployment.yaml
```

## Services

```bash
kubectl apply -f services.yaml
```

## Verify

```bash
kubectl get svc
```

## Access

Portforward

```bash
kubectl port-forward svc/sample-service 8081:80 # Replace `8081` by your favorite available port
```

- Now we can access the service: http://localhost:8081

```bash
curl localhost:8081
```

## Cleanup

```bash
kubectl delete -f ../deployment/deployment.yaml
kubectl delete -f services.yaml
```
