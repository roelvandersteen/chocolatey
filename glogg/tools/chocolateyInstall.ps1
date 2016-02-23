$packageName = 'glogg'
$installerType = 'exe'
$url = 'http://glogg.bonnefon.org/files/glogg-v1.0.3-setup.exe'
$url64bit = 'http://glogg.bonnefon.org/files/glogg-v1.0.3-x86_64-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64bit" -validExitCodes $validExitCodes
