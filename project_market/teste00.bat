@echo off




set /a "time=1"


:time1

set /a "a=700"

set /a "time=time"




set /a  "time= %time% + 1"

echo %time%






if "%time%" == "%a%" (set /a "num=(%random% %%9)+1" & %num%=2 & color %num% & echo xxxxxxxx) ELSE (goto time1)





pause>null
