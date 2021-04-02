#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="rahairston/ryan-udacity-microservices"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ryan-udacity-microservices --image=$dockerpath --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl wait --for=condition=ready pod --all
kubectl port-forward ryan-udacity-microservices 8000:80