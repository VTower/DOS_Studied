@echo off
setlocal disabledelayedexpansion
set ^"LF=^
%= This creates a variable containing a single linefeed (0x0A) character =%
^"
set ^"\n=^^^%LF%%LF%^%LF%%LF%^^"
set @align=for %%. in (1 2) do if %%.==2 (%\n%
   for /f "skip=4 tokens=2 delims= " %%a in ('mode con') do if not defined _line set "_line=%%a"%\n%
   for /f "tokens=*" %%b in (!argv!) do (%\n%
      set "_text=%%b"%\n%
      set "_len=0"%\n%
      set "s=A!_text!"%\n%
      for %%P in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (%\n%
         if "!s:~%%P,1!" neq "" (%\n%
            set /a "_len+=%%P"%\n%
            set "s=!s:~%%P!"%\n%
         )%\n%
      )%\n%
      set /a _space=_line-_len%\n%
      set /a _space/=2%\n%
      set "_bsp="%\n%
      for /l %%c in (1,1,!_space!) do set "_bsp=!_bsp! "%\n%
      echo(!_bsp!!_text!%\n%
   )%\n%
) ELSE setlocal enabledelayedexpansion^&setlocal^&set argv=
::Replace filename.txt with your file
%@align% filename.txt