@echo off 


tasklist | find /i "opera.exe">"%userprofile%/Desktop/saida.txt"

FOR /D %%"opera.exe" IN (saida.txt) DO (echo vitoria && pause)


