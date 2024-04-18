# StatefulSet 101

- StatefulSet is the workload API object used to manage stateful applications.
- Doc: https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/

## Open a watching terminal

```bash
kubectl get pods --watch -l app=nginx
```

## Deploy

Open another terminal, then:

```bash
cd k8sHub
kubectl apply -f k8s101/StatefulSet/statefulset_sample.yaml
```

## Verify

Check object

```bash
kubectl get service nginx
kubectl get statefulset web
```

Check hostname

```bash
for i in 0 1; do kubectl exec "web-$i" -- sh -c 'hostname'; done
```

## Scale up

Scale up to `5` replicas

```bash
kubectl scale sts web --replicas=5
```

Now watch the scale up process in the watching terminal, sample result:

```bash
➜  ~ kubectl get pods --watch -l app=nginx
NAME    READY   STATUS    RESTARTS   AGE
web-0   0/1     Pending   0          0s
web-0   0/1     Pending   0          4s
web-0   0/1     ContainerCreating   0          4s
web-0   1/1     Running             0          16s
web-1   0/1     Pending             0          0s
web-1   0/1     Pending             0          4s
web-1   0/1     ContainerCreating   0          4s
web-1   1/1     Running             0          5s
web-2   0/1     Pending             0          0s
web-2   0/1     Pending             0          4s
web-2   0/1     ContainerCreating   0          4s
web-2   1/1     Running             0          6s
web-3   0/1     Pending             0          0s
web-3   0/1     Pending             0          4s
web-3   0/1     ContainerCreating   0          4s
web-3   1/1     Running             0          5s
web-4   0/1     Pending             0          0s
web-4   0/1     Pending             0          4s
web-4   0/1     ContainerCreating   0          4s
web-4   1/1     Running             0          5s
```

## Scale down

Scale down to `3` replicas

```bash
kubectl scale sts web --replicas=3
```

Now watch the scale up process in the watching terminal, sample result:

```bash
web-4   0/1     ContainerCreating   0          4s
web-4   1/1     Running             0          5s
web-4   1/1     Terminating         0          114s
web-4   0/1     Terminating         0          115s
web-4   0/1     Terminating         0          115s
web-4   0/1     Terminating         0          115s
web-4   0/1     Terminating         0          115s
web-3   1/1     Terminating         0          2m
web-3   0/1     Terminating         0          2m1s
web-3   0/1     Terminating         0          2m1s
web-3   0/1     Terminating         0          2m1s
web-3   0/1     Terminating         0          2m1s
```

## Cleanup

```bash
cd k8sHub
kubectl delete -f k8s101/StatefulSet/statefulset_sample.yaml
```
