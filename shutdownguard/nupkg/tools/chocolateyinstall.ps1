$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'shutdownguard'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType      = 'exe'
  url           = 'https://github.com/stefansundin/shutdownguard/releases/download/v1.0/ShutdownGuard-1.0.exe'
  softwareName  = 'ShutdownGuard'
  checksum      = '71D31B769429F5937226E7164A6D7697'
  checksumType  = 'md5'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
