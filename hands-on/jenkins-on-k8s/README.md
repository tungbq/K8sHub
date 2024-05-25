# Jenkins on k8s

## Doc

- https://www.jenkins.io/doc/book/installing/kubernetes/

## Jenkins controller

### Deploy

```bash
cd hands-on/jenkins-on-k8s
kubectl create namespace devops-tools

./deploy.sh
```

### Port forward

# Port-forwarding

Open new terminal and run

```bash
# Note: You can also replace 8087 to the working PORT in your PC
kubectl port-forward service/jenkins-service -n devops-tools 8087:8080
```

## Jenkins agents on k8s
