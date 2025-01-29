@echo off
:: Get the directory where the batch file is located
set "scriptPath=%~dp0netzwerkprotokolle.ps1"

:: Check if PowerShell is running as administrator
powershell -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%scriptPath%\"' -Verb RunAs"

