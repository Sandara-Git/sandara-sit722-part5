#!/bin/bash

set -e

cd ./scripts/terraform

echo "Initializing Terraform..."
terraform init

echo "Validating Terraform configuration..."
terraform validate

echo "Import Existing Resource Group.."
terraform import azurerm_resource_group.sit722sandara2 /subscriptions/973092b1-c341-496d-92fa-b8731afbd6e4/resourceGroups/sit722sandara2

echo "Import Existing Container Registry"
terraform import azurerm_container_registry.container_registry /subscriptions/973092b1-c341-496d-92fa-b8731afbd6e4/resourceGroups/sit722sandara2/providers/Microsoft.ContainerRegistry/registries/sit722sandara2cr

echo "Import Existing Kubernetes Cluster"
terraform import azurerm_kubernetes_cluster.cluster /subscriptions/973092b1-c341-496d-92fa-b8731afbd6e4/resourceGroups/sit722sandara2/providers/Microsoft.ContainerService/managedClusters/sit722sandara2

echo "Creating Terraform plan..."
terraform plan -out=tfplan

echo "Applying the Terraform plan..."
terraform apply -auto-approve tfplan

rm -f tfplan

echo "Infrastructure deployed successfully!"
