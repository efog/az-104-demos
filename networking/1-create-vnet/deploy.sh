#!/bin/sh
az account set --subscription $AZ_SUBSCRIPTION_ID
az group create -n az104-mod04-demo-uks --location uksouth
az deployment group create --template-file ./template.json --parameters @./parameters.json -g az104-mod04-demo-uks