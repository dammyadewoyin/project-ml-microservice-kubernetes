#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=arrahdami/mlproject

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run mlproject --image=arrahdami/mlproject:latest --port=80


# Step 3:
# List kubernetes pods
kubectl get pods -A

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/mlproject 8000:80
