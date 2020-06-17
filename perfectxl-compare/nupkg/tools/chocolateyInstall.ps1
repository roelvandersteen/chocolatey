$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'perfectxl-compare'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url64bit       = 'https://update.perfectxl.com/perfectxl-compare/win/x64/PerfectXL-Compare-1.0.3.exe'
  softwareName   = 'perfectxl-compare'
  checksum64     = 'E0997F699BCA8CEDEEA0EA6E93985990CA54B2BE6AC79B35B2F4B3905702EF60'
  checksumType64 = 'sha256'
  silentArgs     = '/S /allusers'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
