@echo off

::can be used ' %tmp%/name_tmp.tmp ' on windows

if exist config.bat (call config.bat) else (goto cria)

color %cor_fundo%%cor_letra%

title %titulo%

echo Este e o resultado final !

pause>nul


:cria
echo PAINEL DE PROPRIEDADES:
echo.
set /p "cor_letra=Digite uma Cor de letra 1-9>"
echo.
set /p "cor_fundo=Digite uam Cor de fundo A-F>"
echo.
set /p "titulo=Digite o Titulo da Janela>"

msg /w * "Abra esse script novamente para ver o resultado!"

(
echo set cor_letra=%cor_letra%
echo set cor_fundo=%cor_fundo%
echo set titulo=%titulo%
)>config.bat
::can be used ' %tmp%/name_tmp.tmp ' on windows
