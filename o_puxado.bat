@echo off

::hearder



::funcao pega todas os arquivos nao diretorios e echoa em tempo de linha 
::for %a in (*) do ( echo %a)


:: funcao jogar todas as saidas em um arquivo



::set arquivos=
::for %a in (*) do (set arquivos=%arquivos% %a & echo %arquivos%)







setlocal enabledelayedexpansion


for %%a in (*) do ( set arquivos=!arquivos! %%a )





( echo !arquivos! )>Tudo_da_pasta.txt

endlocal

pause>nul



