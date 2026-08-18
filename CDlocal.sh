#!/usr/bin/env bash

set -e

REPO=$(yq '.flask-mongo.image.repository' ./webapp/values.yaml)
TAG=$(yq '.flask-mongo.image.tag' ./webapp/values.yaml)
RELEASE_NAME=$(yq '.releaseName' ./webapp/values.yaml)

docker build -t "$REPO:$TAG" .
minikube image load "$REPO:$TAG"
helm upgrade --install "$RELEASE_NAME" ./webapp 

kubectl get all
kubectl get pods
kubectl get ingress