#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region sa-east-1 | docker login --username AWS --password-stdin 944471524566.dkr.ecr.sa-east-1.amazonaws.com
docker build -t igti-cin-prod-extract-rais .
docker tag igti-cin-prod-extract-rais:latest 944471524566.dkr.ecr.sa-east-1.amazonaws.com/igti-cin-prod-extract-rais:latest
docker push 944471524566.dkr.ecr.sa-east-1.amazonaws.com/igti-cin-prod-extract-rais:latest
