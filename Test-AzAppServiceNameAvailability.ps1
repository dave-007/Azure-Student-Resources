param ($Name = $(throw "Provide Name parameter, this will be the site name script will check for availability "))

$body = @{name = $Name; type = "site"}

$bodyJson = $body | ConvertTo-JSON

$getParams = @{
  #Path='https://management.azure.com/subscriptions/{subscriptionId}/providers/Microsoft.Web/checknameavailability?api-version=2022-03-01'  
  # ResourceGroupName = 'myresourcegroup'
  ResourceProviderName = 'Microsoft.Web'
  ResourceType = 'checknameavailability'
  ApiVersion = '2022-03-01'
  Method = 'POST'
  Payload = $bodyJson
}
$resultRequest = Invoke-AzRestMethod @getParams -Verbose 

$resultJson = $resultRequest.Content 

$result = $resultJson | ConvertFrom-JSON

$result

$result.nameAvailable
