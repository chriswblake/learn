param addressPrefix string = '10.10.0.0/16'
param subnets array = [
  {
    name: 'frontend'
    ipAddressRange: '10.10.0.0/24'
  }
  {
    name: 'backend'
    ipAddressRange: '10.10.1.0/24'
  }
]

var subnetsProperty = [for subnet in subnets: {
  name: subnet.name
  properties: {
    addressPrefix: subnet.iprange
  }
}]

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: 'teddybear'
  location: resourceGroup().location
  properties:{
    addressSpace:{
      addressPrefixes:[
        addressPrefix
      ]
    }
    subnets: subnetsProperty
  }
}
