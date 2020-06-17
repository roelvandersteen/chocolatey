$ErrorActionPreference = 'Stop';

$packageArgs = @{
  PackageName    = 'gnumeric'
  UnzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  FileType       = 'exe'
  File64         = "$(Join-Path $(Split-Path $MyInvocation.MyCommand.Definition) 'gnumeric-1.12.17-20140610.exe')"
  SoftwareName   = 'gnumeric'
  Checksum64     = 'A4837A8F818540E9BABA8FC13D2412FA'
  ChecksumType64 = 'md5'
  SilentArgs     = '/S'
  ValidExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs