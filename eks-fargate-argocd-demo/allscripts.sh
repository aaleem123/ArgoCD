#!/usr/bin/env bash

REPO=eks-fargate-argocd-demo  


mkdir -p $REPO/app \
         $REPO/manifests/base \
         $REPO/manifests/overlays/fargate
touch \
  $REPO/app/app.js \
  $REPO/app/package.json \
  $REPO/app/Dockerfile \
  $REPO/manifests/base/deployment.yaml \
  $REPO/manifests/base/service.yaml \
  $REPO/manifests/base/kustomization.yaml \
  $REPO/manifests/overlays/fargate/namespace.yaml \
  $REPO/manifests/overlays/fargate/kustomization.yaml \
  $REPO/manifests/argocd-app.yaml

