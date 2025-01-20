
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: 'demovnet1'
  location: 'East US' 
  properties: {
    addressSpace: {
      addressPrefixes: [
        '12.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: demosub1
        properties: {
          addressPrefix: '12.0.1.0/24'
        }
      }
    ]
  }
}
