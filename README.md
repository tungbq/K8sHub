# K8s Hub

<h1 align="center">K8s Hub</h1>

<p align="center">Kubernetes deployment samples, practices, and examples</p>

<p align="center">
  <a href="https://img.shields.io/github/last-commit/tungbq/k8s-hub/main"><img alt="last commit" src="https://img.shields.io/github/last-commit/tungbq/k8s-hub/main" /></a>
  <a href="https://github.com/tungbq/k8s-hub/stargazers"><img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/tungbq/k8s-hub"/></a>
</p>

## Provision your own cluster

- With kind: [kind_installation](./docs/kind_installation.md)
- With docker-desktop, visit: [desktop/kubernetes](https://docs.docker.com/desktop/kubernetes/)
- With AKS, visit: [aks-fresh-cluster](./hands-on/aks-fresh-cluster/)

## Getting Started 🚀

- Official doc: [here](https://kubernetes.io/)
- K8s Basics: [here](https://github.com/tungbq/devops-basics/tree/main/topics/k8s)

## K8s Concepts

Kubernetes Concepts Document ➡️ [here](https://kubernetes.io/docs/concepts/)

## K8s-101

| ID  | Content          | URL                                            | Status  |
| :-- | :--------------- | :--------------------------------------------- | :------ |
| 01  | Deployment       | [Deployment](./k8s101/Deployment/)             | ✔️ Done |
| 02  | Service          | [Service](./k8s101/Service/)                   | ✔️ Done |
| 03  | ConfigMap        | [ConfigMap](./k8s101/ConfigMap/)               | ✔️ Done |
| 04  | PersistentVolume | [PersistentVolume](./k8s101/PersistentVolume/) | ✔️ Done |
| 05  | StatefulSet      | [StatefulSet](./k8s101/StatefulSet/)           | ✔️ Done |
| 06  | ReplicaSet       | [ReplicaSet](./k8s101/ReplicaSet/)             | ✔️ Done |
| 07  | CronJob          | [CronJob](./k8s101/CronJob/)                   | ✔️ Done |
| 08  | Secret           | [Secret](./k8s101/Secret/)                     | ✔️ Done |
| 09  | Namespace        | [Namespace](./k8s101/Namespace/)               | ✔️ Done |

Full `k8s101` content, visit ➡️ [k8s101](./k8s101/README.md)

## Hands-on projects 💥

| ID  | Content                                               | URL                                                                            | Status  |
| :-- | :---------------------------------------------------- | :----------------------------------------------------------------------------- | :------ |
| 01  | Provision fresh AKS k8s cluster with terraform        | [aks-fresh-cluster](./hands-on/aks-fresh-cluster/)                             | ✔️ Done |
| 02  | Deploy MYSQL on AKS                                   | [aks-mysql](./hands-on/aks-mysql/)                                             | ✔️ Done |
| 03  | Deploy basic microservices                            | [basic-microservices-application](./hands-on/basic-microservices-application/) | ✔️ Done |
| 04  | Deploy a Nginx Edge proxy in front of k8s application | [k8s-edge-proxy](./hands-on/k8s-edge-proxy/)                                   | ✔️ Done |
| 05  | Run a single-instance stateful MYSQL application      | [mysql-deployment-single](./hands-on/mysql-deployment-single-instance/)        | ✔️ Done |
