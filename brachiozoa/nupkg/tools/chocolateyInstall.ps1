$ErrorActionPreference = 'Continue';

# Remove annoying shortcuts from Desktop
$desktop1 = [Environment]::GetFolderPath("Desktop")
$desktop2 = [Environment]::GetFolderPath("CommonDesktopDirectory")
$links = @("CCleaner.lnk", "Google Chrome.lnk", "WinDirStat.lnk") | %{ [System.IO.Path]::Combine($desktop1, $_); [System.IO.Path]::Combine($desktop2, $_); }
$links | %{ if (Test-Path $_) { Remove-Item $_ } }

if (Test-Path "C:\Program Files\CCleaner\uninst.exe") { [System.Diagnostics.Process]::Start("C:\Program Files\CCleaner\uninst.exe", "/S") }
if (Test-Path "C:\Program Files\CCleaner") { Remove-Item "C:\Program Files\CCleaner" -Recurse -Force }
if (Test-Path "C:\ProgramData\Chocolatey\bin\ccenhancer-4.5.1.exe") { Remove-Item "C:\ProgramData\Chocolatey\bin\ccenhancer-4.5.1.exe" }
if (Test-Path "C:\ProgramData\Chocolatey\bin\ccenhancer.exe") { Remove-Item "C:\ProgramData\Chocolatey\bin\ccenhancer.exe" }
if (Test-Path "C:\ProgramData\Chocolatey\lib\ccenhancer") { Remove-Item "C:\ProgramData\Chocolatey\lib\ccenhancer" -Recurse -Force }
if (Test-Path "C:\ProgramData\Chocolatey\lib\ccleaner") { Remove-Item "C:\ProgramData\Chocolatey\lib\ccleaner" -Recurse -Force }
