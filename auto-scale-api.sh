#!/bin/bash

kubectl autoscale deployment backend --min=2 --max=5 --cpu-percent=80
kubectl get horizontalpodautoscaler
kubectl describe deployment backend

# kubectl scale --replicas=2 deployment backend
# kubectl delete hpa backend
