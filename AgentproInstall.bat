@echo off
:: =====================================================
::  Agentpro -- Quick Installer
:: =====================================================

:: Check for Admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo  ERROR: Run this as Administrator!
    echo  Right-click and select "Run as administrator"
    echo.
    pause
    exit /b 1
)

echo.
echo =====================================================
echo   Agentpro -- Quick Installer
echo =====================================================
echo.

set "AGENTPRO_URL=https://github.com/SellerDumpskart/Setup/raw/refs/heads/main/AgentproGithub.exe"
set "INSTALL_PATH=C:\Program Files\Agentpro.exe"

:: Step 1: Download
echo [1/2] Downloading Agentpro.exe...
powershell.exe -NoLogo -NoProfile -Command ^
    "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; " ^
    "try { " ^
    "  Invoke-WebRequest -Uri '%AGENTPRO_URL%' -OutFile '%INSTALL_PATH%' -UseBasicParsing; " ^
    "  Write-Host '      OK' " ^
    "} catch { " ^
    "  Write-Host '      FAILED - Could not download' -ForegroundColor Red; " ^
    "  exit 1 " ^
    "}"
if not exist "%INSTALL_PATH%" (
    echo        FAILED - Download unsuccessful
    echo        Check URL: %AGENTPRO_URL%
    pause
    exit /b 1
)

:: Step 2: Run fullinstall
echo [2/2] Running Agentpro fullinstall...
"%INSTALL_PATH%" -fullinstall

echo.
echo =====================================================
echo   DONE -- Agentpro installed successfully
echo =====================================================
echo.
pause
