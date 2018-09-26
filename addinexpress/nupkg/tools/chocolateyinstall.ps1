$ErrorActionPreference = 'Stop'
Get-ChocolateyUnzip "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Add-in Express.7z" "C:\Program Files (x86)\" -ErrorAction Continue
