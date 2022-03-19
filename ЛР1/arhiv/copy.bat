@echo off
cls
d: cd d:\OC
"C:\Program Files\WinRAR\rar.exe" a -m5 -r -dh -x*.cdx -agYYYYMMDD d:\arhiv\ *.*
Pause