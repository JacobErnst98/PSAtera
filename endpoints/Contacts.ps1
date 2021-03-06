function Get-AteraContacts {
  return New-GetRequest -Endpoint "/contacts"
}

function New-AteraContact {
  [CmdletBinding(DefaultParameterSetName='ByCustomerID')]
  param (
    [Parameter(Mandatory, ParameterSetName='ByCustomerID')]
    [int] $CustomerID,
    [Parameter(Mandatory, ParameterSetName='ByCustomerName')]
    [string] $CustomerName,
    [Parameter(Mandatory)]
    [string] $Email,
    [Parameter()]
    [string] $FirstName,
    [Parameter()]
    [string] $LastName,
    [Parameter()]
    [string] $JobTitle,
    [Parameter()]
    [string] $Phone,
    [Parameter()]
    [switch] $IsContactPerson,
    [Parameter()]
    [string] $InIgnoreMode
  )
  New-PostRequest -Endpoint "/contacts" -Body $PSBoundParameters
}