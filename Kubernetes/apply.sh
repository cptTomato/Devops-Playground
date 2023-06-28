#!/bin/bash

#Get the latest Repos
apt update

#Install K3s
curl -sfL https://get.k3s.io | sh - 
sleep 5
#apply Deployments

kubectl apply -f nextcloud/deployment.yaml
kubectl apply -f nextcloud/ingress.yaml
kubectl apply -f nextcloud/service.yaml
sleep 2
kubectl apply -f nginx/deployment.yaml
kubectl apply -f nginx/ingress.yaml
kubectl apply -f nginx/service.yaml
sleep 2
kubectl apply -f website/deployment.yaml
kubectl apply -f website/ingress.yaml
kubectl apply -f website/service.yaml
sleep 2
