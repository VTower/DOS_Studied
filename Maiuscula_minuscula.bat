@echo off 

set mai=0
set min=0

set arg=%*

:inicio

if not  defined arg (goto :fim)

echo %arg:~0,1% | findstr /r [ABCDEFGHIJKLMNOPQWXYZ] >nul

if %errorlevel% == 0 (set mai=1) else (set min=1)

:saltar

set arg=%arg:~1%

goto :inicio


:fim 
if %mai%%min% ==10 set resultado=Possie_MAIUSCULAS !
if %mai%%min% ==01 set resultado=Possui_minusculas !
if %mai%%min% ==11 set resultado=Possu[i_AmBaS !

echo %resultado%