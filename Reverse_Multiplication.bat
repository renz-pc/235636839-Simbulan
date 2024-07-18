@echo off
setlocal enabledelayedexpansion

set /p number="Enter a number: "

echo Reverse Multiplication Table for %number%
for /l %%i in (10,-1,1) do (
    set /a result=number*%%i
    echo %number% x %%i = !result!
)

endlocal
pause
