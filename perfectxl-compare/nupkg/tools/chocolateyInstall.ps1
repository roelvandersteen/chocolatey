$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'perfectxl-compare'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url64bit       = 'https://update.perfectxl.com/perfectxl-compare/win/x64/PerfectXL-Compare-1.0.2.exe'
  softwareName   = 'perfectxl-compare'
  checksum64     = '6A192DE8427CC291342227E5D7CAD6B8'
  checksumType64 = 'md5'
  silentArgs     = '/S /allusers'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
