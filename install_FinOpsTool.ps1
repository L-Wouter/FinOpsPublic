#Requires -RunAsAdministrator
# Parameters
$nameRg = 'RG_45Degrees-FinOpsTool'
$location = 'westeurope' 
$date = Get-Date -Format "MM-dd-yyyy"
$deploymentName = "FinOps"+"$date"
$tagName1 = "45Degrees"
$tagName2 = "FinOps"
$TemplateFileLocation = ".\main.bicep"

# Check if Az module is installed, if not it will be installed
if (Get-Module -ListAvailable -Name Az ) {
    Write-Host "Az module already installed" -ForegroundColor Magenta
    Update-Module -Name Az
} 
# Update module of already installed
else {
    Write-Host "Az module not installed. Installing now..." -ForegroundColor Magenta
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
}

# Login to Azure 
Write-Host "`nPlease Sign-in to Azure, with a account that has at least the Monitoring Contributor role.`n" -ForegroundColor Magenta
Connect-AzAccount

# Create Resource Group
Write-Host "`nCreating Azure Resource Group...`n" -ForegroundColor Magenta
$error.clear()
try {   New-AzResourceGroup -Name $nameRg -Location $location -Tag @{tagName1=$tagName1;tagName2=$tagName2} }
catch { Write-Host "Error occured while creating resource group" -ForegroundColor Red
        Write-Warning $Error[0]}
if (!$error) {Write-Host "Resource group successfully created" -ForegroundColor Green }

# Register insights Resource Provider
Write-Host "`nRegister Insights Resource Provider...`n" -ForegroundColor Magenta
$error.clear()
try {   Register-AzResourceProvider -ProviderNamespace "Microsoft.insights"}
catch { Write-Host "Error occured while registering Microsoft.insights" -ForegroundColor Red 
        Write-Warning $Error[0]
    }
if (!$error) {  Write-Host "Microsoft.insights successfully registered. Waiting for 20 seconds now." -ForegroundColor Green}

# Wait 20 seconds to be sure that everything is processed
Start-Sleep -Seconds 20


if (!$error) {  Write-Host "All prerequisites are completed." -ForegroundColor Green}
