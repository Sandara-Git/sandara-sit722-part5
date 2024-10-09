#!/bin/bash

set -e

cd ./scripts/terraform

echo "Initializing Terraform..."
terraform init

echo "Validating Terraform configuration..."
terraform validate

echo "Import Existing Resource Group.."
terraform import azurerm_resource_group.sit722sandara2 /subscriptions/973092b1-c341-496d-92fa-b8731afbd6e4/resourceGroups/sit722sandara2

echo "Creating Terraform plan..."
terraform plan -out=tfplan

echo "Applying the Terraform plan..."
terraform apply -auto-approve tfplan

rm -f tfplan

echo "Infrastructure deployed successfully!"
