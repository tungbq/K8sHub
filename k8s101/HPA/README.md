# HPA

Horizontal Pod Autoscaling

## Document

- https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/

## Deploy

```bash
# Navigate to k8sHub repo
cd k8sHub
kubectl apply -f k8s101/HPA/hpa_sample.yaml
```

## Verify

```bash
kubectl get deployment

kubectl get hpa
```

## Cleanup

```bash
cd k8sHub
kubectl delete -f k8s101/HPA/hpa_sample.yaml
```
