# ConfigMap

## Deploy

```bash
# Navigate to k8sHub repo
cd k8sHub
kubectl apply -f k8s101/PersistentVolume/pv_sample.yaml
```

## Verify

```bash
kubectl get pvc
```

## Cleanup

```bash
kubectl delete -f k8s101/PVC/pv_sample.yaml
```
