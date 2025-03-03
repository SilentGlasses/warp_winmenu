$path = "C:\Program Files\Warp\warp.exe"

# For directories
$regPathDir = "HKCR:\Directory\shell\Warp"
$commandPathDir = "HKCR:\Directory\shell\Warp\command"
New-Item -Path $regPathDir -Force | Out-Null
Set-ItemProperty -Path $regPathDir -Name "(default)" -Value "Open in Warp Terminal"
Set-ItemProperty -Path $regPathDir -Name "Icon" -Value "$path"
New-Item -Path $commandPathDir -Force | Out-Null
Set-ItemProperty -Path $commandPathDir -Name "(default)" -Value "`"$path`" `"$path`" \"warp://action/new_tab?path=%1\""

# For files
$regPathFile = "HKCR:\*\shell\Warp"
$commandPathFile = "HKCR:\*\shell\Warp\command"
New-Item -Path $regPathFile -Force | Out-Null
Set-ItemProperty -Path $regPathFile -Name "(default)" -Value "Open in Warp Terminal"
Set-ItemProperty -Path $regPathFile -Name "Icon" -Value "$path"
New-Item -Path $commandPathFile -Force | Out-Null
Set-ItemProperty -Path $commandPathFile -Name "(default)" -Value "`"$path`" \"warp://action/new_tab?path=%1\""
