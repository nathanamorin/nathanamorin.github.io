---
title: Intro to Kind Kubernetes (Local Kubernetes Development) - Part 2
tags: [K8s, Kubernetes, Kind, LocalKubernetes]
style: fill
color: primary
description: Using Kind configuration to create more complex k8s infra
---

To make the process of building more complex Kind infra, Kind provides configuration files which can
be passed to the kind create CLI.

This example will be walking through creating a dev ready Kind cluster for web app development which
will allow hosting a Frontend/Backend/DB with Ingress resources.


## Setting up cluster

The below command will setup a 3 node cluster.

```
echo '''
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
- role: worker
- role: worker
''' | kind create cluster --config=-
```

```
Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.19.1) 🖼
 ✓ Preparing nodes 📦
 ✓ Writing configuration 📜
 ✓ Starting control-plane 🕹️
 ✓ Installing CNI 🔌
 ✓ Installing StorageClass 💾
 ✓ Joining worker nodes 🚜
```

You can check the cluster node status by running
```
kubectl get nodes
```
```
NAME                 STATUS   ROLES    AGE     VERSION
kind-control-plane   Ready    master   5m8s    v1.19.1
kind-worker          Ready    <none>   4m38s   v1.19.1
kind-worker2         Ready    <none>   4m38s   v1.19.1
```

Configure an Nginx ingress controller
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
```

```
tic/provider/kind/deploy.yaml
namespace/ingress-nginx created
serviceaccount/ingress-nginx created
configmap/ingress-nginx-controller created
clusterrole.rbac.authorization.k8s.io/ingress-nginx created
clusterrolebinding.rbac.authorization.k8s.io/ingress-nginx created
role.rbac.authorization.k8s.io/ingress-nginx created
rolebinding.rbac.authorization.k8s.io/ingress-nginx created
service/ingress-nginx-controller-admission created
service/ingress-nginx-controller created
deployment.apps/ingress-nginx-controller created
validatingwebhookconfiguration.admissionregistration.k8s.io/ingress-nginx-admission created
serviceaccount/ingress-nginx-admission created
clusterrole.rbac.authorization.k8s.io/ingress-nginx-admission created
clusterrolebinding.rbac.authorization.k8s.io/ingress-nginx-admission created
role.rbac.authorization.k8s.io/ingress-nginx-admission created
rolebinding.rbac.authorization.k8s.io/ingress-nginx-admission created
job.batch/ingress-nginx-admission-create created
job.batch/ingress-nginx-admission-patch created
```

Run this command to wait until ingress controller is ready (espeshally important in CI test environments)
```
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
```
```
pod/ingress-nginx-controller-55bc59c885-8kcp4 condition met
```


Deploy example app to test ingress deploy.  This deploys two pods & services, with an ingress that directs
traffic between the two services.

```
kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml
```
```
pod/foo-app created
service/foo-service created
pod/bar-app created
service/bar-service created
```

You can view these services by accessing:
[http://localhost/bar](http://localhost/bar)
[http://localhost/foo](http://localhost/foo)


Comming Soon (example 3 teir web app)



Resources:
+ https://kind.sigs.k8s.io/docs/user/ingress/
+ https://kind.sigs.k8s.io/docs/user/quick-start/
+ https://github.com/kubernetes/ingress-nginx

