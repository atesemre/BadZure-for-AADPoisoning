<#
    .Synopsis

    .DESCRIPTION

    .EXAMPLE

    .OUTPUTS
    
    .NOTES

    .FUNCTIONALITY

    .LINK
   
#>

[CmdletBinding()]

param
(
   [Parameter(Mandatory = $false,
      Position = 1,
      HelpMessage = 'Build')]
   [switch]$Build,
   [Parameter(Mandatory = $false,
   Position = 1,
   HelpMessage = 'Destroy')]
   [switch]$Destroy
)

if($Build -eq $true){

    . Lib/CreateUsers.ps1
    . Lib/CreateApps.ps1
    . Lib/AssignAppPerm.ps1
    . Lib/AssignUserPerm.ps1
    Write-Host I will build !
    CreateUsers
    CreateApps
    AssignAppPermissions



}

elseif($Destroy-eq $true){

    Write-Host I will destroy !
    . Lib/DeleteApps.ps1
    . Lib/DeleteUsers.ps1


    DeleteUsers
    DeleteApps

}



