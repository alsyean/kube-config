#!/bin/bash

# 네임스페이스 삭제
kubectl delete namespace argocd
kubectl delete namespace harbor
#kubectl delete namespace gitlab

# 특정 리소스 삭제 (네임스페이스를 삭제하지 않는 경우에만 필요)
# kubectl delete service argocd-server -n argocd
# kubectl delete service harbor -n harbor
# kubectl delete service gitlab -n gitlab

# kubectl delete deployment argocd -n argocd
# kubectl delete deployment harbor -n harbor
# kubectl delete deployment gitlab -n gitlab

# kubectl delete statefulset argocd -n argocd
# kubectl delete statefulset harbor -n harbor
# kubectl delete statefulset gitlab -n gitlab

# kubectl delete ingress argocd-ingress -n argocd
# kubectl delete ingress harbor-ingress -n harbor
# kubectl delete ingress gitlab-ingress -n gitlab
