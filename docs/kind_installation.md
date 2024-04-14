# Create your cluster

## With kind

- Install kind: https://kind.sigs.k8s.io/
- Create cluster

```bash
# Create
kind create cluster

# Set context
kubectl cluster-info --context kind-kind

# Check
kubectl get nodes
# NAME                 STATUS   ROLES           AGE     VERSION
# kind-control-plane   Ready    control-plane   2m19s   v1.29.2
```
