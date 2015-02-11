$packageName = 'shutdownguard'
$installerType = 'exe'
$url = 'http://shutdownguard.googlecode.com/files/ShutdownGuard-1.0.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
