// Parameters
param WorkbookName string = newGuid()
param WorkbookDisplayName string = '45Degrees - FinOps tool'
param Location string = 'westeurope'
param workbookType string = 'workbook'
param workbookSourceId string = 'azure monitor'
param tagName1 string = '45Degrees'
param tagName2 string = 'FinOps'

// Create workbook with basic content
resource workbook 'Microsoft.Insights/workbooks@2022-04-01' = {
  name: WorkbookName
  location: Location
  tags: {
    Company: tagName1
    Department: tagName2
  }
  kind: 'shared'
  properties: {
    category: workbookType
    description: WorkbookDisplayName
    displayName: WorkbookDisplayName
    serializedData: '{"version":"Notebook/1.0","items":[{"type":1,"content":"{\\"json\\":\\"45Degrees - FinOps tool. Paste the template content here\\"}","conditionalVisibility":null}],"isLocked":false}'
    version: '1.0'
    sourceId: workbookSourceId

  }

}
