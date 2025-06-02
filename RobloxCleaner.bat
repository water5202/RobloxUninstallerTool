@echo off
chcp 65001
taskkill /F /IM robloxplayerbeta.exe
cls
echo [=] Version 1.0                                                                                          
echo [+] Clean Roblox files?
echo [Y/N]
set /p answer=

if /i "%answer%"=="Y" goto yes
if /i "%answer%"=="N" goto no
echo [-] Syntax [%answer%]
timeout /t 2 /nobreak > nul
goto :eof

:yes
:end
cls
echo [-] Cleaning Roblox files [=  ]
timeout /t 1 /nobreak > nul
cls
echo [-] Cleaning Roblox files [== ]
set "targetData=%LOCALAPPDATA%\Roblox"
set "targetTemp=%TEMP%\Roblox"
timeout /t 1 /nobreak > nul
cls

if exist "%targetData%" (
    rd /s /q "%targetData%"
) else (
echo [?] Not found
)

if exist "%targetTemp%" (
    rd /s /q "%targetTemp%"
) else (
echo [?] Not found
)
echo [-] Cleaning Roblox files [===]
goto end

:no
goto :eof

:end
echo ──────────────────────────────────────────────────────
echo [-] Removed Roblox files
echo [-] %targetData%
echo [-] %targetTemp%
pause
:end
