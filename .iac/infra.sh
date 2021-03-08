echo "ECOML Project"

PROJECT_NAME="ecomlproject"
LOCATION="westeurope"

# Use Azure CLI
##resource group oluştur
az group create --name="${PROJECT_NAME}-rg" --location="${LOCATION}"

## App servie plan oluştur
az appservice plan create --resource-group "${PROJECT_NAME}-rg" --name "${PROJECT_NAME}-plan" --location "${LOCATION}" --sku "FREE"

## Web App create
az webapp create --resource-group "${PROJECT_NAME}-rg" --plan "${PROJECT_NAME}-plan" --name "${PROJECT_NAME}-web"
