# Edge proxy Nginx

## Deploy Sample microservices - by Azure

- Sample microservices app for AKS demos, tutorials, and experiments: https://github.com/Azure-Samples/aks-store-demo/blob/main/aks-store-quickstart.yaml

```bash
# Deploy on demo namespace
kubectl create ns edge-proxy-demo
kubectl apply -f https://raw.githubusercontent.com/Azure-Samples/aks-store-demo/main/aks-store-quickstart.yaml -n edge-proxy-demo

# Check
kubectl get all -n edge-proxy-demo
```

## Deploy edge proxy

```bash
kubectl apply -f hands-on/k8s-edge-proxy/nginx-edge-proxy.yaml

# Verify
kubectl get svc
```

## Access the proxy

- Forward port

```bash
kubectl port-forward svc/nginx-ingress 8080:80
```

- Access: http://localhost:8080

- Result
  ![store-front](./assets/store-front.png)
