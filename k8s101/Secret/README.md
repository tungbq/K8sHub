# Secret

Document: https://kubernetes.io/docs/concepts/configuration/secret/

## Deploy

```bash
# Navigate to k8sHub repo
cd k8sHub
kubectl apply -f k8s101/Secret/secret_sample.yaml
```

## Verify

```bash
# Check secret
kubectl get secret

# Check pods
kubectl get pods

# Check pod logs
kubectl logs secret-dotfiles-pod
```

## Cleanup

```bash
kubectl delete -f k8s101/Secret/secret_sample.yaml
```

