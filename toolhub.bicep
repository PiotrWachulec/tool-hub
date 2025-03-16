targetScope = 'subscription'

/*
  Parameters
*/

param location string = 'polandcentral'

@description('The short name of the project')
@minLength(1)
@maxLength(3)
param projectShortName string

@description('The environment to deploy the tool hub to')
@allowed([
  'dev'
  'sbx'
  'shd'
  'stg'
  'uat'
  'tst'
  'prd'
])
param environment string

/*
  Variables
*/

var toolHubResourceGroupName = '${projectShortName}-${environment}-rg-01'

/*
  Resources
*/

resource toolHubResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: toolHubResourceGroupName
  location: location
}
