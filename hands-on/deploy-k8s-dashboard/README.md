# Deploy K8s dashboard

## Prerequisite

- Helm

## Deploy Dashboard

In order to install Kubernetes Dashboard simply run:

```bash
# Add kubernetes-dashboard repository
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/

# Deploy a Helm Release named "kubernetes-dashboard" using the kubernetes-dashboard chart
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard
```

## Accessing Dashboard

```bash
kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443
```

NOTE: In case port-forward command does not work, make sure that kong service name is correct.
Check the services in Kubernetes Dashboard namespace using:

```bash
# Debug service
kubectl -n kubernetes-dashboard get svc
# Debug pod
kubectl -n kubernetes-dashboard get pod
```

Dashboard will be available at: https://localhost:8443
