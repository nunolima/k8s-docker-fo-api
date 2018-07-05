#!/bin/bash
echo "Delete all project..."
kubectl delete ns development
kubectl delete ns production

