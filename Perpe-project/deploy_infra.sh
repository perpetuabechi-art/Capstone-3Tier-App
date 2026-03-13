#!/bin/bash

# Variables - Change these to keep your work unique!
RG_NAME="Group5_Resource_RG"
LOCATION="eastus"
VM_NAME="StaticWebVM"
VNET_NAME="Group5VNet"

echo "Creating Resource Group..."
az group create --name $RG_NAME --location $LOCATION

echo "Creating Virtual Network and Subnet..."
az network vnet create --resource-group $RG_NAME --name $VNET_NAME --address-prefix 10.0.0.0/16 --subnet-name WebSubnet --subnet-prefix 10.0.1.0/24

echo "Creating Network Security Group (NSG) and allowing Port 80..."
az network nsg create --resource-group $RG_NAME --name WebNSG
az network nsg rule create --resource-group $RG_NAME --nsg-name WebNSG --name AllowHTTP --priority 100 --destination-port-ranges 80 --protocol Tcp --access Allow
