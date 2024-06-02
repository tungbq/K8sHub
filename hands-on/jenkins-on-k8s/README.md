# Jenkins on k8s

## Document

- https://www.jenkins.io/doc/book/installing/kubernetes/

## Deploy Jenkins controller

### 1. Deploy

```bash
cd hands-on/jenkins-on-k8s
kubectl create namespace devops-tools

./deploy.sh
```

### 2. Port-forwarding

- Open new terminal and run:

```bash
# Note: You can also replace 8087 to the working PORT in your PC
kubectl port-forward service/jenkins-service -n devops-tools 8087:8080
```

### 3. Get initialal password

Jenkins will ask for the initial Admin password when you access the dashboard for the first time.

```bash
# Get the Jenkins podname
kubectl get pods --namespace=devops-tools

# Given that we have <pod_name>, now cat the initialAdminPassword
kubectl exec -it <pod_name> cat /var/jenkins_home/secrets/initialAdminPassword -n devops-tools

# Sample output: d72493ce44fb48bc8833da94b40cdd68
```

### 4. Access the Jenkins

- Login to http://localhost:8087 (or another PORT suits with you PC you forward previously), with the initial password obtained from previous step.
- Once you enter the password, proceed to install the suggested plugin and create an admin user.

  ![login-ok](./assets/login-ok.png)

## Jenkins agents on k8s

- TODO
