# 45Degrees - FinOps Tool

## Installation procedure
1.	Sign-in to https://portal.azure.com 
2.	Open the ‘Cloud Shell’ 
3.	Configure the shell and make sure to use the ‘PowerShell CLI’
< Placeholder for screenshot >
4.	Paste and run the following script

>Invoke-WebRequest -Uri https://raw.githubusercontent.com/L-Wouter/FinOpsPublic/main/install_FinOpsTool.ps1 -OutFile .\install_FinOpsTool.ps1; .\install_FinOpsTool.ps1

5.	The workbook is now created. Open the 'Azure portal', go to 'Monitor', select on the left 'Workbooks' (or click this link) and click on the '45Degrees - FinOps tool' workbook
6.	Click on the 'edit' button of the workbook and after this click on the advanced editor (code brackets) button
7.	Paste all content from 'workbookContent.json' into the 'Gallery Template' and click on 'Apply'
8.	Let all code process and click on the 'save' button, after this click the 'Done editing' button
9.	The Workbook is ready to use!


## Notes:
- To deploy this workbook, you need in the Azure tenant an account with at least the ‘**Monitoring Contributor** role’ and the ‘**Application Insights Component Contributor** role’
- All data will immediately be available
- Because the Workbook is processing a lot of data, it can occur that you see some errors like 'Please provide below info when asking for support:...'
  - When you receive these, just click the '*refresh workbook*' button. This is a bottleneck that can occur.

<!-- ROADMAP -->
## Roadmap
- [ ] Report underutilized Virtual Machines based on CPU and RAM
- [ ] Write data in DB
- [ ] Cost estimation of orphan resources 
- [ ] Tagged vs untagged resources in %

