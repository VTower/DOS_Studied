@Echo off
Mode Con: lines=23 Cols=61
title Menu Batch - Usando CHOICE

:i
cls
Echo.
echo  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo  º                                                         º
echo  º Curso Batch Script por Bryann Henrique            Û²±°  º
echo  º                                                         º
echo  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo  º                                                         º
echo  º Para iniciar um programa, digite seu numero:            º
echo  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo  º                                                         º
echo  º ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»  º
echo  º ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹ ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹ ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹  º
echo  º º1: Calculadora º º2: G. Tarefas  º º3: B. de notas  º  º
echo  º ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼  º
echo  º ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»  º
echo  º ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹ ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹ ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹  º
echo  º º4: W. Update   º º5: Paint       º º6: I. Explorer  º  º
echo  º ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼  º
echo  º                                                         º
echo  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
choice /c "123456" /n /m "ÄDigite> "

:dec
echo Resultado: %errorlevel%
pause >nul
goto %errorlevel%

:1
start calc.exe
goto i
:2
start taskmgr.exe
goto i
:3
start notepad.exe
goto i
:4
start wuapp.exe
goto i
:5
start mspaint.exe
goto i
:6
start iexplore.exe
goto i