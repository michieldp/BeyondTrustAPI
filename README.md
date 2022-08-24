## Introduction
Just a cloud enthousiast using BeyondTrust's Privileged Remote Access API to automate :-)

This repository is where I'll eventually try to place white labeled powershell scripts you can use to authenticate, automate configuration and hopefully fully understand BeyondTrust's Privileged Remote Access system.

I myself use a combination of Azure Automation, Powershell scripts, DevOps repositories and finally BeyondTrust's PRA to fully automate the enrollment of remote systems into our privileged access solution. 


## Azure Automation Variables
Make sure you create these upfront!
```
pra_clientid = the clientID required to authenticate to the API
pra_secret = the secret required to authenticate to the API
pra_token = where we'll store the token, used in our other scripts :-)
```

## Scripts - PRA_Authenticate.ps1
Let's start easy by authenticating using our [PRA_Authenticate.ps1](https://github.com/michieldp/BeyondTrustAPI/blob/main/PRA_Authenticate.ps1). Some things to note: Ensure you change the OAuth2 URI to your own PRA installation. Ensure you've stored the clientID & Secret inside Azure Automate as (secure) variables, and have created a blank pra_token (secure) variable.

Running the PRA_Authenticate.ps1 inside your Azure Automation account will successfully authenticate you to the API, store its token inside a variable and put $authSuccess to true. 
