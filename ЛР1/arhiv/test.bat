@echo off
d: cd d:\arhiv\
cls
echo file %0 copy %1 in %2
if -%1==- goto noparam
if -%2==- goto noparam
xcopy %1 %2 /s
"c:\Program Files\WinRAR\WinRAR.exe" a -r -m5 -x*.txtq   d:\arhiv\doc.rar d:\arhiv\
goto :eof
:noparam
echo ne zadani parametri!
Pause