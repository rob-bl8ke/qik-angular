# Source: https://learn.microsoft.com/en-us/training/modules/implement-azure-container-apps/3-exercise-deploy-app
# Modified to fit.

az logout
az login

# Install the Azure Container Apps extension for CLI
az extension add --name containerapp --upgrade

# Register the Microsoft.App namespace
az provider register --namespace Microsoft.App

# Register Microsoft.OperationalInsights provier
az provider register --namespace Microsoft.OperationalInsights


$resourceGroup=$Env:QikResourceGroup
$webApp=$Env:QikWebAppContainerPrefix
$appContainerEnv=$Env:QikContainerEnvironment
$imageTag="bobbyache/qikweb:1.0.0"
$location="eastus"

az group create --name $resourceGroup --location eastus

# Create the App Container Environment
az containerapp env create `
    --name $appContainerEnv `
    --resource-group $resourceGroup `
    --location $location

# Create the Container App (Note the little trick to pass back the dns name)
# --image mcr.microsoft.com/azuredocs/containerapps-helloworld:latest ` `
az containerapp create `
    --name $webApp `
    --resource-group $resourceGroup `
    --environment $appContainerEnv `
    --image $imageTag `
    --target-port 80 `
    --ingress 'external' `
    --query properties.configuration.ingress.fqdn

# Take the domain name provided and browse to it... should get you to the welcome page!

# az group delete --name $Env:QikResourceGroup --yes