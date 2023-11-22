$clientId = "27b8eb81-e1c8-4152-8928-29f3c42ba07d" 
$tenantId = "beb63dc3-dd0c-40d6-b1d2-db518fd2a8c4" 
$clientSecret = "gdj8Q~jRiy~rcP-~--L4fQRRWyK1flay4XveWc_J"  



$scope = "https://graph.microsoft.com/.default"  #application permissions “AuditLog.Read.All” and “User.Read.All“.

$body = @{

    client_id = $clientId

    scope = $scope

    client_secret = $clientSecret

    grant_type = "client_credentials"

}

$response = Invoke-RestMethod -Method Post -Uri "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token" -Body $body

$accessToken = $response.access_token

$accessToken

$header = @{

    "Authorization" = "Bearer $accessToken"

}
