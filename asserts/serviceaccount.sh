#!/bin/bash
EKS_CLUSTER="dev-eks"
SERVICEACCOUNT="s3-loader"
NAMESPACE="default"

eksctl create iamserviceaccount \
  --cluster=$EKS_CLUSTER \
  --name=$SERVICEACCOUNT \
  --namespace=$NAMESPACE \
  --attach-policy-arn=arn:aws:iam::aws:policy/AmazonS3FullAccess \
  --approve