# Ingress 101

- An API object that manages external access to the services in a cluster, typically HTTP.
- Ingress may provide load balancing, SSL termination and name-based virtual hosting.
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.github.io/ingress-nginx/deploy/

## Nginx ingress

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.0/deploy/static/provider/cloud/deploy.yaml

# Pre-flight-check
kubectl get pods --namespace=ingress-nginx

```

## Deploy

Open another terminal, then:

```bash
cd k8sHub
kubectl apply -f k8s101/Ingress/ingress_sample.yaml
```

## Verify

```bash
kubectl get ingress

# ➜  k8sHub git:(ingress) ✗ kubectl get ingress
# NAME              CLASS    HOSTS              ADDRESS   PORTS   AGE
# example-ingress   <none>   demo.localdev.me             80      10s
```

## Access

Now, forward a local port to the ingress controller:

```bash
kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8081:80

curl --resolve demo.localdev.me:8081:127.0.0.1 http://demo.localdev.me:8081
```

Or visit http://demo.localdev.me
