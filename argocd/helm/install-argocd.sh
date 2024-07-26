#!/bin/bash

# Argo CD 설치 스크립트

# 네임스페이스 생성
kubectl create namespace argocd

# Helm 저장소 추가 및 업데이트
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

# Argo CD 설치
helm install argocd argo/argo-cd -n argocd -f argocd/helm/argocd-values.yaml
