# Introduction
Just a cloud enthousiast using BeyondTrust's Privileged Remote Access API to automate :-)

This repository is where I'll eventually try to place white labeled powershell scripts you can use to authenticate, automate configuration and hopefully fully understand BeyondTrust's Privileged Remote Access system.

I myself use a combination of Azure Automation, Powershell scripts, DevOps repositories and finally BeyondTrust's PRA to fully automate the enrollment of remote systems into our privileged access solution. 

# Azure Automation Variables
Make sure you create these upfront!

pra_clientid = the clientID required to authenticate to the API
pra_secret = the secret required to authenticate to the API
pra_token = where we'll store the token, used in our other scripts :-)
