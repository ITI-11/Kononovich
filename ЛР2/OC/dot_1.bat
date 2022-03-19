@ECHO OFF 
cls 
echo list of hidden files in a folder %1 in the file %2
dir %1 /ah /b > D:\OC\%2.txt 
