# ReplicaSet 101

- A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time. As such, it is often used to guarantee the availability of a specified number of identical Pods.
- https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/

## Deploy

```bash
kubectl apply -f k8s101/ReplicaSet/replicaset_sample.yaml
```

## Verify

```bash
kubectl get pods
kubectl get replicaset
# kubectl describe replicasets <replicaset-name>
```

## Destroy

```bash
kubectl delete -f k8s101/ReplicaSet/replicaset_sample.yaml
```
