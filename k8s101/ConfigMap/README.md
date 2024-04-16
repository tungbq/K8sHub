# ConfigMap

## Deploy

```bash
# Navigate to k8sHub repo
cd k8sHub
kubectl apply -f k8s101/ConfigMap/configmap_sample.yaml
```

## Verify

```bash
kubectl get deployment
kubectl describe deployment config-map-deployment
```

## Cleanup

```bash
kubectl delete -f k8s101/ConfigMap/configmap_sample.yaml
```
