# VARIABLES
## Check ReadMe! We store variables inside Azure Automation where we'll run this script!

$clientid = Get-AutomationVariable -Name 'pra_clientid'
$clientsecret = Get-AutomationVariable -Name 'pra_secret'
$authurl = "https://yourURL.com/oauth2/token" #Edit this to your own URL for authenticating to the API

# Headers & Body

$authSuccess = $false #Use this later on to either run further scripts or not!

$creds = @{
    client_id = $clientid
    client_secret = $clientsecret
    grant_type = "client_credentials"    
};

$header_token = @{"Content-Type" = "application/x-www-form-urlencoded"}

# Authenticate

try {
    $response = Invoke-RestMethod "$authurl" -Method Post -Body $creds -Headers $header_token
    $token = $response.access_token;
    $authSuccess = $true

    "  Authorized. Token is: $token"
}
catch {
    
    $authSuccess = $false
    "  ERROR - Unable to get an access token."
}

# Store the token! 

Set-AutomationVariable -name 'pra_token' -value $token
