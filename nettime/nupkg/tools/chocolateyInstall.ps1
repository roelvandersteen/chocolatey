$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'nettime'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType      = 'exe'
  url           = 'http://www.timesynctool.com/NetTimeSetup-314.exe'
  softwareName  = 'NetTime'
  checksum      = '107C0E40D46936B166F362090D34AA4C'
  checksumType  = 'md5'
  silentArgs   = '/silent'
  validExitCodes= @(0)
}

$netTimeSvc = Get-Service NetTimeSvc -ErrorAction SilentlyContinue
if ($netTimeSvc -and $netTimeSvc.CanStop) { $netTimeSvc.Stop() }
$netTime = Get-Process NetTime -ErrorAction SilentlyContinue
if ($netTime) { Stop-Process $netTime.Id }
Install-ChocolateyPackage @packageArgs
