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

### Method 1: Using the Registry File (Simple & Fast)

1. Execute the PowerShell script directly from GitHub using this command:
```
irm "https://raw.githubusercontent.com/SilentGlasses/warp_winmenu/main/open_warp.reg" | Out-File "$env:TEMP\open_warp.reg"; Start-Process regedit -ArgumentList "/s $env:TEMP\open_warp.reg" -Wait -NoNewWindow
```
2. **Done!** Right-click inside any folder and select **"Open in Warp Terminal"**.

#### How it works:

- Downloads `open_warp.reg` from GitHub.
- Saves it temporarily in the system temp directory.
- Runs regedit silently (/s) to add the registry key.

---

### Method 2: Using the PowerShell Script (Automated)

1. Execute the PowerShell script directly from GitHub using this command:
```
irm "https://raw.githubusercontent.com/SilentGlasses/warp_winmenu/main/install_warp_context.ps1" | iex
```  
2. When prompted, confirm the installation.
4. **Done!** The right-click option is now available.

---

## How It Works

- The Registry file (open_warp.reg) adds a new right-click context menu entry for folders.
- The PowerShell script (install_warp_context.ps1) automates the same process.
- Warp Terminal opens in a new tab at the selected folder.
- The default Warp installation path is C:\Program Files\Warp\Warp.exe.

## Files in This Repo

- File	Description
- `open_warp.reg` Adds "Open in Warp Terminal" via Windows Registry
- `install_warp_context.ps1`	PowerShell script to add "Open in Warp Terminal"

## Troubleshooting

- **Warp Terminal is not opening?**
    - Ensure Warp is installed at `C:\Program Files\Warp\warp.exe`. If installed elsewhere, update the scripts.
- **PowerShell script blocked?**
    - Run this command in PowerShell (Admin):
    ```
    Set-ExecutionPolicy Unrestricted -Scope CurrentUser
    ```
