#!/bin/bash

# NGINX Ingress Controller 설치 스크립트

# 네임스페이스 생성
kubectl create namespace ingress-nginx || true

# NGINX Ingress Controller 설치
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx -n ingress-nginx -f ingress-nginx/ingress-nginx-values.yaml
