
<#
Import this module to use all the scripts in Nishang, except Keylogger, in the current PowerShell session. The module must reside in the Nishang folder.

PS > Import-Module .\nishang.psm1

http://www.labofapenetrationtester.com/2014/06/nishang-0-3-4.html
https://github.com/samratashok/nishang
#>


#Code stolen from here https://github.com/mattifestation/PowerSploit
Get-ChildItem -Recurse (Join-Path $PSScriptRoot *.ps1) | ForEach-Object { if ($_.Name -ne "Keylogger.ps1") {. $_.FullName}}

