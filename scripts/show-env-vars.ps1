# $resourceGroup="robazresourcegroup"
# $location="eastus"
# $appContainerEnv="robaz-app-container-env"
# $imageTag="bobbyache/qikweb:1.0.0"

$resourceGroup=$Env:QikResourceGroup
$location="eastus"
$appContainerEnv=$Env:QikContainerEnvironment
$webApp=$Env:QikWebAppContainerPrefix
$imageTag="bobbyache/qikweb:1.0.0"

Write-Output  "Resource Group: $resourceGroup"
Write-Output  "Location: $location"
Write-Output  "Web App Container Prefix: $webApp"
Write-Output  "App Container Env: $appContainerEnv"
Write-Output  "Image Tag: $imageTag"