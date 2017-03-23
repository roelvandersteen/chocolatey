$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glogg'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url64bit       = 'http://glogg.bonnefon.org/files/glogg-v1.1.3-x86_64-setup.exe'
  softwareName   = 'glogg'
  checksum64     = 'D31AD0D409167A6222307FBAFFBFEFF7'
  checksumType64 = 'md5'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
