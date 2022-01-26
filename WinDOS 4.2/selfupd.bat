@echo off
color 01
title WinDOS Updater
echo Checking Manufacter's version's signature...
IF EXIST "C:\Users\%username%\WinDOS 4.2\ver42.signature" msg * You are up-to-date! ELSE goto DownUpdate.
:DownUpdate
cls
echo Downloading update...
powershell -Command "Invoke-WebRequest https://github.com/Win-DOS/WinDOS-Update-Repo/WinDOS-4.2-Patch1.zip -OutFile WinDOS-4.2-Patch1.zip"
timeout 5 >NUL
echo.
echo Unzip files...
unzip.exe WinDOS-4.2-Patch1.zip 
timeout 5 >NUL
echo.
echo Move files to location...
MOVE /Y C:\Users\%username%\Downloads\WinDOS-4.2-Patch1 C:\Users\%username%\
timeout 5 >NUL
echo.
echo Finish!
echo The Updater will exit in:
timeout 10
exit 
