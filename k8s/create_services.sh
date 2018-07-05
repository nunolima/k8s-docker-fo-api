#!/bin/bash
echo "Creating services..."
kubectl create -f services/
kubectl get service

