@echo off
title Multiple Choice Menu
:home
cls
echo.
echo Select a task:
echo =============
echo.
echo 1) Open www.mintywhite.com
echo 2) List Temp-files
echo 3) Run IpConfig.exe
echo 4) Run CleanUp.Bat
echo 5) Exit
echo.
set /p web=Type option:
if "%web%"=="1" start www.mintywhite.com
if "%web%"=="2" goto list
if "%web%"=="3" start ipconfig.exe
if "%web%"=="4" Call cleanup.bat
if "%web%"=="5" exit
goto home
:list
echo Listing files from c:\windows\temp
dir c:\windows\temp /p /b
Pause
goto home

Save the document as Menu.bat
Then Create another bat-file, call it cleanup.bat and save it in the same folder as the above.
Copy this code into it:

echo Removing Temp-files from c:\windows\temp
echo Note! If you get an error, you need to run
echo this with administrative privileges.
cd\
cd\windows\temp
Del *.tmp /Q
Pause
