$packageName = 'glogg'
$installerType = 'exe'
$url = 'http://glogg.bonnefon.org/files/glogg-latest-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
