$packageName = 'gnumeric'
$installerType = 'exe'
$url = 'http://people.gnome.org/~mortenw/gnumeric/gnumeric-1.12.17-20140610.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
