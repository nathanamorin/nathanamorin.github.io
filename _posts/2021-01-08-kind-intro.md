---
title: Intro to Kind Kubernetes (Local Kubernetes Development) - Part 1
tags: [K8s, Kubernetes, Kind, LocalKubernetes]
style: fill
color: primary
description: Intro to Kind Kubernetes (Local Kubernetes Development) - Part 1 - Introduction (installation & first config)
---

A locally running Kubernetes cluster is a valuable tool to both easily learn & experiment with Kuberntes, but also develop new Kuberntes configurations without needing to deploy a Kubernetes cluster to a Cloud provider / hosting stack.  Additionally, for developer teams, it allows each developer to experiment on their own local Kubernetes cluster rather than using a shared cluster with the inherent disruption of multiple developers experimenting on the same cluster.  Finally, In your CI runs, having a local Kubernetes cluster provides the oportunity to test kubernetes deployments within your CI environment whithout deploying a full Kubernetes cluster.  This allows for more testing earlier in the development cycle while also reducing the time & cost to test as spining a full kubernetes cluster in a cloud provider takes much more time & costs significantly more.

There are a few other easily installable Kubernetes projects such as MicroK8s, K3s (Rancher) or MiniKube.  If you are setting up a home lab, MicroK8s or K3s would make the most sence.  MiniKube & Kind (this guide) are focused around local development & testing.  Kind sets itself apart from MiniKube with it's focus on running Kubernetes in docker (MiniKube now supports this as well), along with its support for multi node HA clusters (all running locally). 

This guide walks through the basics getting Kind Kubernetes installed & configured.  For your specific environment jump to to the Linux (Ubuntu), Mac, or Windows Sections.


## Linux (Ubuntu) Install & Setup

Ubuntu Version: ```Ubuntu 18.04.4 LTS```

Prerequisites:
+ Docker ([Get Docker](https://docs.docker.com/get-docker/))

Download Kind Binary & move to location in your PATH
````bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.9.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/
````

The first time you create a kind Kubernetes cluster, it will take a couple minutes to download the docker images.

Run:
```bash
kind create cluster
```
 ```bash
 Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.19.1) 🖼 
 ✓ Preparing nodes 📦  
 ✓ Writing configuration 📜 
 ✓ Starting control-plane 🕹️ 
 ✓ Installing CNI 🔌 
 ✓ Installing StorageClass 💾
 ```

To interact with the kubernetes cluster, install the kubernetes CLI.  On Ubuntu 18, this can be done with a snap.  For more install options, see [Kubernetes Docs](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux)

Run:
```
sudo snap install kubectl --classic
```
```
kubectl 1.20.1 from Canonical✓ installed
```

If you have multiple Kubernetes configurations on your machine, run the below command to set your Kubernetes context to use the Kind config.
```
kubectl config set-context kind-kind
```
```
Context "kind-kind" modified.
```

Verify the cluster is running by listing the cluster nodes
```
kubectl get nodes
```
```
NAME                 STATUS   ROLES    AGE   VERSION
kind-control-plane   Ready    master   15m   v1.19.1
```

You how have a running local Kubernetes cluster!

## Mac

Prerequisites:
+ Docker ([Get Docker](https://docs.docker.com/get-docker/))

Mac installation is simplified greatly by brew (the Mac package manager).  If you haven't already, see [brew installation](./brew).

Once brew is installed, installing kind is as simple as:
```
brew install kind
```

The first time you create a kind Kubernetes cluster, it will take a couple minutes to download the docker images.

Run:
```bash
kind create cluster
```
 ```bash
 Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.19.1) 🖼 
 ✓ Preparing nodes 📦  
 ✓ Writing configuration 📜 
 ✓ Starting control-plane 🕹️ 
 ✓ Installing CNI 🔌 
 ✓ Installing StorageClass 💾
 ```
 
Install the kubernetes CLI by running:
```
brew install kubectl
```

If you have multiple Kubernetes configurations on your machine, run the below command to set your Kubernetes context to use the Kind config.
```
kubectl config set-context kind-kind
```
```
Context "kind-kind" modified.
```
 
Verify the cluster is running by listing the cluster nodes
```
kubectl get nodes
```
```
NAME                 STATUS   ROLES    AGE    VERSION
kind-control-plane   Ready    master   100s   v1.19.1
```

You how have a running local Kubernetes cluster!


## Windows

(comming soon)
