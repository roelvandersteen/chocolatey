$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glogg'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url64bit       = 'http://glogg.bonnefon.org/files/glogg-v1.1.4-x86_64-setup.exe'
  softwareName   = 'glogg'
  checksum64     = '1F71C2DA992A77ADC264F6173F2005D6'
  checksumType64 = 'md5'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
