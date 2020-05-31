$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'gnumeric'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url64bit       = 'https://web.archive.org/web/20140702003750if_/https://people.gnome.org/~mortenw/gnumeric/gnumeric-1.12.17-20140610.exe'
  softwareName   = 'gnumeric'
  checksum64     = 'A4837A8F818540E9BABA8FC13D2412FA'
  checksumType64 = 'md5'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
