#!/bin/bash

# Harbor 설치 스크립트

# 네임스페이스 생성
kubectl create namespace harbor

# Helm 저장소 추가 및 업데이트
helm repo add harbor https://helm.goharbor.io
helm repo update

# Harbor 설치
helm install harbor harbor/harbor -n harbor -f harbor/helm/harbor-values.yaml
