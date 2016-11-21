$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glogg'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = 'http://glogg.bonnefon.org/files/glogg-v1.0.3-setup.exe'
  url64bit       = 'http://glogg.bonnefon.org/files/glogg-v1.1.2-x86_64-setup.exe'
  softwareName   = 'glogg'
  checksum       = '0284229FE6476354577EF458901F313C'
  checksumType   = 'md5'
  checksum64     = '0A1D367D3AE8C535E02593C9FC6F8C23'
  checksumType64 = 'md5'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
