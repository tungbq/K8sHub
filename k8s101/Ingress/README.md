# Ingress 101

- An API object that manages external access to the services in a cluster, typically HTTP.
- Ingress may provide load balancing, SSL termination and name-based virtual hosting.
- Doc: https://kubernetes.io/docs/concepts/services-networking/ingress/

## Deploy

Open another terminal, then:

```bash
cd k8sHub
kubectl apply -f k8s101/Ingress/ingress_sample.yaml
```

## Verify

```bash
kubectl get ingress
```
