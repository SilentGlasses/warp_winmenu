```
   ▗▖ ▗▖ ▗▄▖ ▗▄▄▖ ▗▖ ▗▖    ▗▄▄▄▖▗▖  ▗▖     
   ▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▐▌▗▞▘      █  ▐▛▚▖▐▌     
   ▐▌ ▐▌▐▌ ▐▌▐▛▀▚▖▐▛▚▖       █  ▐▌ ▝▜▌     
   ▐▙█▟▌▝▚▄▞▘▐▌ ▐▌▐▌ ▐▌    ▗▄█▄▖▐▌  ▐▌     
▗▄▄▖ ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▖ ▗▄▄▄▖ ▗▄▄▖ ▗▄▄▖
▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌   ▐▌   ▐▌   
▐▛▀▘ ▐▛▀▚▖▐▌ ▐▌▐▌▝▜▌▐▛▀▚▖▐▛▀▀▘ ▝▀▚▖ ▝▀▚▖
▐▌   ▐▌ ▐▌▝▚▄▞▘▝▚▄▞▘▐▌ ▐▌▐▙▄▄▖▗▄▄▞▘▗▄▄▞▘
!!!!! NOT READY FOR PRODUCTION USE !!!!!
```

## Warp Win Menu

This repository provides two methods to add a **"Open in Warp Terminal"** option to the Windows right-click menu.

## Features

- Adds a right-click option to **open Warp Terminal** in the selected directory.
- Works on Windows 11.
- Supports both **Registry (.reg)** and **PowerShell (.ps1)** installation.
- Opens Warp Terminal in a **new tab** at the selected directory.

---

## Installation Methods

1. Execute the PowerShell script directly from GitHub using this command:
```
irm "https://raw.githubusercontent.com/SilentGlasses/warp_winmenu/main/open_warp.reg" | Out-File "$env:TEMP\open_warp.reg"; Start-Process regedit -ArgumentList "/s $env:TEMP\open_warp.reg" -Wait -NoNewWindow
```
2. **Done!** Right-click inside any folder and select **"Open in Warp Terminal"**.

#### How it works:

- Downloads `open_warp.reg` from GitHub.
- Saves it temporarily in the system temp directory.
- Runs regedit silently (/s) to add the registry key.

## Troubleshooting

- **Warp Terminal is not opening?**
    - Ensure Warp is installed at `C:\Program Files\Warp\warp.exe`. If installed elsewhere, update the scripts.
