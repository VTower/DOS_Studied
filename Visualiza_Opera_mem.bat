@echo off 

mode 25,3
color 1f
title Opera Register



:start

timeout /nobreak /t 1 >nul



tasklist | find /i "opera.exe" >"%tmp%\opera_data_mem.tmp"


IF %errorlevel% == 1 (
	cls & echo.
	echo Not in Process !
	goto :start
)


for /f "tokens=5 usebackq" %%a in ("%tmp%\opera_data_mem.tmp") do (CAll :function_clear %%a)


goto :function_rearrange


:function_clear
set value=%1
set value=%value:.=%
set /a soma_value+=%value%

goto :eof

:function_rearrange

call cont %soma% >"%tmp%\dados.tmp"
set /p med=<"%tmp%\dados.tmp"
set med=%med:~-1%

if %med% geq 7 ( if %med% leq 9 ( goto GB ))
if %med% geq 4 ( if %med% leq 6 ( goto MB ))
if %med% geq 1 ( if %med% leq 3 ( goto KB ))
:GB
cls & echo. 
echo %soma_value:~0,1%,%soma_value:~1,2%  GB
set /a soma_value=0

goto:start

:MB
cls & echo.
echo Opera RAM %soma_value:~-3%  MB
set /a soma_value=0

goto :start

:KB
cls & echo.
echo Opera RAM  %soma_value%  KB
set /a soma_value=0

goto :start



