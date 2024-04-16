# ConfigMap

## Deploy

```bash
## Create folder
sudo mkdir /tmp/data_demo

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
kubectl delete -f k8s101/PersistentVolume/pv_sample.yaml
```
