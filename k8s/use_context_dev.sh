#!/bin/bash
echo "Start using dev context..."
kubectl config use-context dev
kubectl config current-context
#kubectl config view
