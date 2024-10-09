#!/bin/bash

set -e

cd ./scripts/terraform

echo "Initializing Terraform..."
terraform init

echo "Validating Terraform configuration..."
terraform validate

echo "Creating Terraform plan..."
terraform plan -out=tfplan

echo "Applying the Terraform plan..."
terraform apply tfplan

rm -f tfplan

echo "Infrastructure deployed successfully!"
