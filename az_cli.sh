#!/usr/bin/env bash

# find the most popular commands
az find "az vm"
az find blob

#  authenticate to Azure
az login

# list all resource groups
az group list --output table

# create a resource group
az group create --name "myResourceGroup" --location "eastus"
