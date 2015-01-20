$packageName = 'glogg'
$installerType = 'exe'
$url = 'http://glogg.bonnefon.org/files/glogg-v1.0.2-1-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
