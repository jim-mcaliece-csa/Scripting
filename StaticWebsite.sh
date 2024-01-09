#!/bin/bash

# This script creates a resource group and a storage account to be configured for a static website

# To Execute
# In the portal open a Bash Shell
# Upload this document
# Provide execute rights
# chmod +x StaticWebsite.sh
# Run the Script
# ./StaticWebsite.sh
# Case sensitive
#-- Must go into Storage Account and Enable static website; script will not do it.

# Define variables
resourceGroupName="[RESOURCE GROUP NAME]"
location="eastus"  # For example, "eastus"

# Log in to Azure (you will be prompted to enter credentials if not already logged in)
#az login

# Create a new resource group
az group create --name $resourceGroupName --location $location

echo "Resource group '$resourceGroupName' created successfully."

az deployment group create --resource-group $resourceGroupName --template-file template.json --parameters parameters.json
