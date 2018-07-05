#!/bin/bash
echo "Start using prod context..."
kubectl config use-context prod
kubectl config current-context

