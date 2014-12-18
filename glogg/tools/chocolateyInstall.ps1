$packageName = 'glogg'
$installerType = 'exe'
$url = 'http://glogg.bonnefon.org/files/glogg-latest-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
