# Create Workbook using the bicep file
Write-Host "`nCreating Azure Workbook...`n" -ForegroundColor Magenta
$error.clear()
try {   New-AzResourceGroupDeployment -Name $deploymentName -ResourceGroupName $nameRg -TemplateFile $TemplateFileLocation}
catch { Write-Host "Error occured while creating workbook" -ForegroundColor Red
        Write-Warning $Error[0]
    }
if (!$error) {  Write-Host "Workbook successfully created" -ForegroundColor Green}