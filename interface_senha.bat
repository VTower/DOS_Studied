@echo off 

echo.
echo Digite Sua Senha:

:loop
for /f "delims=" %%# in ('xcopy /w "%~f0 " "%~f0 " 2^>nul') do if not defined key (set "key=%%#")

if "%key:~-1%" == "" goto :fim

if not "%key:~-1%" == "" (
		set "senha=%senha%%key:~-1%"
		set /p "=*"<nul
	) else (
		if not "%senha%"=="" set "senha=%senha:~0,-1%"
			set /p "= " <nul
	)

set key=

goto :loop



:fim
cls 
echo Sua Senha e : %senha%
pause>nul