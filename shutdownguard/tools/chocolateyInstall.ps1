$packageName = 'shutdownguard'
$installerType = 'exe'
$url = 'https://github.com/stefansundin/shutdownguard/releases/download/v1.0/ShutdownGuard-1.0.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
