@echo off
setlocal enabledelayedexpansion
set /p time24="Time Converter (ex. 24 = 12 AM): "

set hour=%time24:~0,2%
set min=%time24:~3,2%

set period=AM

set /a hourInt=%hour%

if %hourInt% geq 12 (
    set period=PM
    if %hourInt% gtr 12 set /a hourInt=hourInt-12
)

if %hourInt% equ 0 set hourInt=12

if %hourInt% lss 10 set hourInt=0%hourInt%

echo %hourInt%:%min% %period%

endlocal
pause
