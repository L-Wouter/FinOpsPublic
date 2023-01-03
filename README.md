# 45Degrees - FinOps Tool

To deploy this workbook, you need to follow these steps: 
1. Run the '*CreateAzureResources.ps1*' PowerShell script to create all requirements and to deploy the Workbook
2. Open the '*Azure portal*', go to '*Monitor*', select on the left '*[Workbooks](https://portal.azure.com/#view/Microsoft_Azure_Monitoring/AzureMonitoringBrowseBlade/~/workbooks)*' and click on the '*45Degrees - FinOps tool*' workbook
3. Click on the '*edit*' button of the workbook
4. Click on the '*advanced editor*' (code brackets) button
5. Paste all content from '*workbookContent.json*' into the '*Gallery Template*' and click on '*Apply*'
6. Let all code process and click on the '*save*' button
7. Click the '*Done editing*' button
8. The Workbook is now ready to use! 

## Notes:
- Run The ps1 script as **admin**
- To deploy this workbook, you need in the Azure tenant an account with at least the **Monitoring Contributor role**
- All data will immediately be available
- Because the Workbook is processing a lot of data, it can occur that you see some errors like 'Please provide below info when asking for support:...'
  - When you receive these, just click the '*refresh workbook*' button. This is a bottleneck that can occur.

<!-- ROADMAP -->
## Roadmap
- [ ] Report underutilized Virtual Machines based on CPU and RAM
- [ ] Write data in DB
- [ ] Cost estimation of orphan resources 
- [ ] Tagged vs untagged resources in %

