---
title: Intro to Kind Kubernetes (Local Kubernetes Development) - Part 1
tags: [K8s, Kubernetes, Kind, LocalKubernetes]
style: fill
color: primary
description: Intro to Kind Kubernetes (Local Kubernetes Development) - Part 1 - Introduction (installation & first config)
---


# Intro to Kind Kubernetes

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
kind creae cluster
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

Verify the cluster is running by listing the cluster nodes
```
kubectl get nodes
```
```
NAME                 STATUS   ROLES    AGE   VERSION
kind-control-plane   Ready    master   15m   v1.19.1
```

## Mac

(comming soon)

## Windows

(comming soon)
