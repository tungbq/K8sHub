# Kind ingress Nginx

## Create cluster

```bash
cat <<EOF | kind create cluster --config=-
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
EOF
```

## Pre conf

```bash

kubectl apply -f https://projectcontour.io/quickstart/contour.yaml

# kubectl apply -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/master/deploy/single/all-in-one-dbless.yaml
# Deprecated
kubectl apply -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/v2.12.0/deploy/single/all-in-one-dbless.yaml

# Patch1
kubectl patch deployment -n kong proxy-kong -p '{"spec":{"replicas":1,"template":{"spec":{"containers":[{"name":"proxy","ports":[{"containerPort":8e3,"hostPort":80,"name":"proxy-tcp","protocol":"TCP"},{"containerPort":8443,"hostPort":443,"name":"proxy-ssl","protocol":"TCP"}]}],"nodeSelector":{"ingress-ready":"true"},"tolerations":[{"key":"node-role.kubernetes.io/control-plane","operator":"Equal","effect":"NoSchedule"},{"key":"node-role.kubernetes.io/master","operator":"Equal","effect":"NoSchedule"}]}}}}'

# NOdeport patch2
kubectl patch service -n kong kong-proxy -p '{"spec":{"type":"NodePort"}}'
```

## Nginx Igress install

Install

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```

Wait for nginx completed

```bash
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s

# Expected result looks like: pod/ingress-nginx-controller-55bbd74b5f-rjjjj condition met
```

## Apply sample

```bash
kubectl apply -f k8s101/Ingress/kind_sample.yaml
# Patch
kubectl patch ingress example-ingress -p '{"spec":{"ingressClassName":"kong"}}'
```

## Verify
Object
```bash
kubectl get ingress
```

Service
```bash
# should output "foo-app"
curl localhost/foo/hostname
# should output "bar-app"
curl localhost/bar/hostname
```