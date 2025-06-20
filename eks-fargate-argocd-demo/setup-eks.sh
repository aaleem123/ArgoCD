#!/usr/bin/env bash
set -euo pipefail

# -------- CONFIG --------
CLUSTER_NAME="demo-cluster"
REGION="us-east-1"
NAMESPACE="eks-fargate-demo"
FARGATE_PROFILE_NAME="fargate-profile"
K8S_VERSION="1.29"
# ------------------------

echo "Creating EKS cluster: $CLUSTER_NAME in $REGION ..."
eksctl create cluster \
  --name "$CLUSTER_NAME" \
  --region "$REGION" \
  --version "$K8S_VERSION" \
  --without-nodegroup \
  --fargate

echo "Cluster created."

echo "Creating Fargate profile for namespace: $NAMESPACE ..."
eksctl create fargateprofile \
  --cluster "$CLUSTER_NAME" \
  --name "$FARGATE_PROFILE_NAME" \
  --namespace "$NAMESPACE"

echo "Fargate profile created."

echo "Verifying access to cluster ..."
kubectl get nodes
kubectl get ns

echo "Setup complete! Your cluster is ready for Argo CD + app deployment."

