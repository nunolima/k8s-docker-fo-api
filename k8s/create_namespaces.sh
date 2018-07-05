#!/bin/bash
echo "Creating namespaces..."
kubectl create -f namespaces/
kubectl get namespaces --show-labels

