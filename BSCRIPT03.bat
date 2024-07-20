@echo off
title BSCRIPT03
:menu
echo BSCRIPT03
echo 1. Ipconfig
echo 2. Tasklist
echo 3. Taskkill
echo 4. Chkdsk
echo 5. Format
echo 6. Defrag
echo 7. Find
echo 8. Attrib
echo 9. Exit
set /p choice="Choose a number: "
if "%choice%"=="1" goto ipconfig
if "%choice%"=="2" goto tasklist
if "%choice%"=="3" goto taskkill
if "%choice%"=="4" goto chkdsk
if "%choice%"=="5" goto format
if "%choice%"=="6" goto defrag
if "%choice%"=="7" goto find
if "%choice%"=="8" goto attrib
if "%choice%"=="9" goto exit
echo Invalid
goto menu
:ipconfig
ipconfig
pause
goto menu
:tasklist
tasklist
pause
goto menu
:taskkill
echo PID of the process to kill
set /p pid=
taskkill /PID %pid%
pause
goto menu
:chkdsk
echo Drive letter to check
set /p drive=
chkdsk %drive%
pause
goto menu
:format
echo Drive letter to format
set /p drive=
echo Format %drive%? (Y/N)
set /p confirm=
if /I "%confirm%"=="Y" (
    format %drive%
) else (
    echo Cancelled
)
pause
goto menu
:defrag
echo Drive letter to defrag
set /p drive=
defrag %drive%
pause
goto menu
:find
echo Text to find
set /p text=
echo File to search
set /p file=
find "%text%" %file%
pause
goto menu
:attrib
echo File or directory to change attributes
set /p file=
echo Attributes (+r, -r, +h, -h):
set /p attributes=
attrib %attributes% %file%
pause
goto menu
:exit
exit