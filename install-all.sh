#!/bin/bash

# NGINX Ingress Controller 설치
sh ./ingress-nginx/install-ingress-nginx.sh

# Argo CD 설치
sh ./argocd/helm/install-argocd.sh

# Harbor 설치
sh ./harbor/helm/install-harbor.sh

# GitLab 설치
#sh ./gitlab/helm/install-gitlab.sh

#kubectl annotate ingressclass nginx meta.helm.sh/release-name=gitlab
#kubectl annotate ingressclass nginx meta.helm.sh/release-namespace=gitlab
#kubectl label ingressclass nginx app.kubernetes.io/managed-by=Helm


# Ingress 설정 적용
kubectl apply -f argocd/argocd-ingress.yaml
kubectl apply -f harbor/harbor-ingress.yaml
#kubectl apply -f gitlab/gitlab-ingress.yaml


# 포트 포워딩을 백그라운드에서 실행
nohup kubectl port-forward svc/argocd-server -n argocd 8080:443 > /dev/null 2>&1 &
nohup kubectl port-forward svc/harbor -n harbor 8081:443 > /dev/null 2>&1 &
#nohup kubectl port-forward svc/gitlab -n gitlab 8082:443 > /dev/null 2>&1 &
