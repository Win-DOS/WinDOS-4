:: A new update for WinDOS 3.4
::
:: WinDOS3 Update 55
:: Contributed by TartSoft (duongletrieu)
:: Made In Hanoi, VN
::
:: This Program is under GNU General Public License. To see
:: the license go to this link:
:: https://github.com/TartSoft/WDOS-3.5/blob/main/LICENSE.md
::
@echo off 
color 02
title WinDOS3
echo -----------------------------------------------
echo  _    _ _      ______ _____ _____ 
echo ^| ^|  ^| (_)     ^|  _  \  _  /  ___^|
echo ^| ^|  ^| ^|_ _ __ ^| ^| ^| ^| ^| ^| \ `--. 
echo ^| ^|/\^| ^| ^| '_ \^| ^| ^| ^| ^| ^| ^|`--. \
echo \  /\  / ^| ^| ^| ^| ^|/ /\ \_/ /\__/ /
echo  \/  \/^|_^|_^| ^|_^|___/  \___/\____/ 
echo.
echo ------------------------------------------------
echo Loading, Please Wait...
timeout 4 > NUL
cls
echo Booting up WinDOS3...
timeout 2 > NUL
echo Checking files...
timeout 2 >NUL 
echo Loading Updater...
call start selfupd.bat
timeout 2 >NUL
:login
cls
echo  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo        Login:     
echo  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo.
echo ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo Please type your password here:
echo ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
set/p pass=
if %pass%==183456 goto mainscr
if not %pass%==%pass% goto error
:error
msg * Your password is not correct. Please try again
goto login
:mainscr
cls
echo ████████████████████████████████████
echo ████████████████████████████████████
echo ████████████████████████████████████
echo ████████████████████████████████████
echo █%time%█%date%██WDOS 3.5 ██
echo ████████████████████████████████████
echo ████████████████████████████████████
echo ████████████████████████████████████
echo ████████████████████████████████████
echo ████████████████████████████████████
echo █████████████ Main Menu ████████████
echo ████████████████████████████████████
echo ████████████████████████████████████
echo ██Type a number to open a program ██
echo ████████████████████████████████████
echo ████         ACCESORIES         ████
echo ████████████████████████████████████
echo ████        1.Calculator        ████
echo ████        2.Notepad           ████                                                  
echo ████        3.Screenshot        ████
echo ████████████████████████████████████
echo ████           GAMES            ████
echo ████████████████████████████████████
echo ████       4.Snake Xenzia       ████
echo ████       5.Miesweeper         ████
echo ████████████████████████████████████
echo ████      [TYPE 6] SHUTDOWN     ████
echo ████████████████████████████████████
set /p input=                       
if %input%==1 goto calc 
if %input%==2 goto notepad
if %input%==3 goto screenshot
if %input%==4 goto snake
if %input%==5 goto minesweeper
if %input%==6 goto exit
:calc
call start calc.bat
:notepad
call start notepad.bat
:screenshot
call start scrshot.vbs
:snake
call start snakexz.bat
:minesweeper
call start minesweeper.bat
:exit
timeout 10
exit
