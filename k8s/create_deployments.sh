#!/bin/bash
echo "Creating deployments..."
kubectl create -f deployments/
kubectl get deployment
kubectl get pod
