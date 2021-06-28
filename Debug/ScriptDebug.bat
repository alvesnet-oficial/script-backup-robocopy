@echo off
title CMD Loading... 
color a
set load=
set/a loadnum=0

:Loading
set load=%load%Û
cls
echo.
echo Loading... Please Wait...
echo ----------------------------------------------------------------------------------------------------
echo %load%
echo ----------------------------------------------------------------------------------------------------
ping localhost -n 2 >nul

set/a loadnum=%loadnum% +1
if %loadnum%==100 goto Done

goto Loading
:Done
echo.
pause

exit