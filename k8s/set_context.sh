#!/bin/bash
echo "Set namespace context..."
#kubectl config view
#kubectl config current-context
# The next step is to define a context for the kubectl client to work in each namespace. The values of “cluster” and “user” fields are copied from the current context.
kubectl config set-context prod --namespace=production --cluster=gke_jumia-app-sample_europe-west1-b_cluster-1 --user=gke_jumia-app-sample_europe-west1-b_cluster-1
kubectl config set-context dev --namespace=development --cluster=gke_jumia-app-sample_europe-west1-b_cluster-1 --user=gke_jumia-app-sample_europe-west1-b_cluster-1

