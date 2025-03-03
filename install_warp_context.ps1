$path = "C:\Program Files\Warp\Warp.exe"
$regPath = "HKCU:\Software\Classes\Directory\Background\shell\OpenWarp"
$commandPath = "HKCU:\Software\Classes\Directory\Background\shell\OpenWarp\command"

New-Item -Path $regPath -Force | Out-Null
Set-ItemProperty -Path $regPath -Name "(default)" -Value "Open in Warp Terminal"
Set-ItemProperty -Path $regPath -Name "Icon" -Value "$path"

New-Item -Path $commandPath -Force | Out-Null
Set-ItemProperty -Path $commandPath -Name "(default)" -Value "`"$path`" --new-tab --working-directory `"%V`""
