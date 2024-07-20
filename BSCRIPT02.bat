@echo off
:main
echo Select a shape
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
echo 4. Exit
set /p shape=Choose a shape: 
if "%shape%"=="1" goto circle
if "%shape%"=="2" goto triangle
if "%shape%"=="3" goto quadrilateral
if "%shape%"=="4" goto exit
echo Invalid choice
pause
goto main
:circle
echo Circle
set /p radius=Radius of the circle: 
set /a area=3.14159 * %radius% * %radius%
echo Area of the circle: %area%
pause
goto main
:triangle
echo Triangle
set /p a=Side A: 
set /p b=Side B: 
set /p c=Side C: 
set /a s=(%a% + %b% + %c%) / 2
set /a area=s * (s - %a%) * (s - %b%) * (s - %c%)
set /a area=%area% ** 0.5
echo Area of the triangle: %area%
if %a%==%b% if %b%==%c% (
    echo The triangle is equilateral
) else if %a%==%b% if not %b%==%c% (
    echo The triangle is isosceles
) else if %a%==%c% if not %a%==%b% (
    echo The triangle is isosceles
) else if %b%==%c% if not %b%==%a% (
    echo The triangle is isosceles
) else (
    echo The triangle is scalene
)
pause
goto main
:quadrilateral
echo Quadrilateral
set /p length=Length: 
set /p width=Width: 
set /a area=%length% * %width%
echo Area of the quadrilateral is: %area%
if %length%==%width% (
    echo The quadrilateral is a square
) else (
    echo The quadrilateral is a rectangle
)
pause
goto main
:exit
pause