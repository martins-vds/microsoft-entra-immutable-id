[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $ImmutableId
)

$ErrorActionPreference = "Stop"

if (-Not (Get-Module -ListAvailable -Name MSOnline)) {
    throw "MSOnline module is not installed. Please install it using Install-Module -Name MSOnline"
}

Import-Module MSOnline

Connect-MsolService

$users = Get-MsolUser -All | Where-Object { $_.ImmutableID -eq $ImmutableId } | Select-Object -Property ImmutableID, ObjectId, UserPrincipalName, DisplayName

if ($users) {
    $users | Format-Table ImmutableId, ObjectId, UserPrincipalName, DisplayName
} 
else {
    Write-Output "No user found with ImmutableId: $ImmutableId"
}