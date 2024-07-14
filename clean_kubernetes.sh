#!/bin/bash

# Delete all resources in the default namespace
kubectl delete all --all -n default

# Delete all PersistentVolumeClaims in all namespaces
kubectl delete pvc --all --all-namespaces

# Delete all PersistentVolumes
kubectl delete pv --all

# Delete all ConfigMaps in the default namespace
kubectl delete configmap --all -n default

# Delete all Secrets in the default namespace
kubectl delete secret --all -n default

# Optionally, delete other namespaces
# kubectl delete namespace my-namespace

# For Minikube users, restart the cluster
# minikube delete
# minikube start

echo "Kubernetes environment cleaned up."