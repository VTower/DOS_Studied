@echo off 


tasklist | find /i "opera.exe">"%userprofile%/Desktop/saida.txt"

FOR /D %%"opera.exe" IN (saida.txt) DO (echo vitoria && pause)


---fazer p for separar por espa;os de nomes
---contar quantas vezes ele faz isso 
---pritnar com o nome e um tamanho legal ( movimenta;ao de telinha)
