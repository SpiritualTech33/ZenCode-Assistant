@echo off

:: ─────────────────────────────────────────────
::  ZenCode Assistant — Setup Script
::  Windows
::  v1.7.3 — The Programmer Monk
:: ─────────────────────────────────────────────

chcp 65001 >nul 2>&1

echo.
echo   ☯️  ZenCode Assistant — Setup
echo   ─────────────────────────────
echo.

:: Step 1: Check if Ollama is installed
where ollama >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo   Presence: Ollama not found. 
    echo   Action: Installing Ollama automatically via winget...
    echo   ─────────────────────────────
    echo.
    
    :: Attempt to install via winget
    winget install Ollama.Ollama
    
    if %ERRORLEVEL% neq 0 (
        echo.
        echo   ✗ Automatic installation failed. 
        echo   Please download it manually from: https://ollama.com
        echo   Then run this script again.
        echo.
        pause
        exit /b 1
    )
    
    echo.
    echo   ✓ Ollama installed successfully.
    echo   Please wait a moment for the system to recognize the command...
    timeout /t 5 /nobreak >nul
) else (
    echo   ✓ Ollama is already present.
)

echo.

:: Step 2: Pull the base model
echo   Acquisition: Pulling gemma3:4b (~3.3 GB)...
echo   Grab a coffee. This runs once. ☕
echo.
ollama pull gemma3:4b

if %ERRORLEVEL% neq 0 (
    echo.
    echo   ✗ Failed to pull gemma3:4b. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo   ✓ gemma3:4b pulled successfully.
echo.

:: Step 3: Create ZenCode Assistant from the Modelfile
echo   Creation: Building ZenCode-Assistant-v1.7.3...
ollama create zen_code -f Modelfile-ZenCode-Assistant

if %ERRORLEVEL% neq 0 (
    echo.
    echo   ✗ Failed to create zen_code. Check the Modelfile and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo   ✓ Done. zen_code is here.
echo.

:: Step 4: Launch
echo   Activation: Launching ZenCode Assistant...
echo   ─────────────────────────────
echo.
ollama run zen_code

pause
\r