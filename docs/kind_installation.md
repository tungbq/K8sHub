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

## Extra mount

- Extra mounts can be used to pass through storage on the host to a kind node for persisting data, mounting through code etc. Visit: https://kind.sigs.k8s.io/docs/user/configuration/#extra-mounts
