$packageName = 'nettime'
$installerType = 'exe'
$url = 'http://www.timesynctool.com/NetTimeSetup-314.exe'
$silentArgs = '/silent'
$validExitCodes = @(0)

$netTimeSvc = Get-Service NetTimeSvc -ErrorAction SilentlyContinue
if ($netTimeSvc -and $netTimeSvc.CanStop) { $netTimeSvc.Stop() }
$netTime = Get-Process NetTime -ErrorAction SilentlyContinue
if ($netTime) { Stop-Process $netTime.Id }
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
