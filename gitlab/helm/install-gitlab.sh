#!/bin/bash

# GitLab 설치 스크립트

# 네임스페이스 생성
kubectl create namespace gitlab

# Helm 저장소 추가 및 업데이트
helm repo add gitlab https://charts.gitlab.io/
helm repo update

# GitLab 설치
helm install gitlab gitlab/gitlab -n gitlab -f gitlab/helm/gitlab-values.yaml
