Dim s, t, WshShell, TotalSize, txt, FSO, D, str, C, i, ss
do 
WScript.StdOut.WriteLine("Menu") 
WScript.StdOut.WriteLine("-----------------------------") 
WScript.StdOut.WriteLine("1. Information about the author") 
WScript.StdOut.WriteLine("2. Hidden files in a folder") 
WScript.StdOut.WriteLine("3. Save free space on a specified disk ") 
WScript.StdOut.WriteLine("4. Exit") 
WScript.StdOut.WriteLine("-----------------------------") 
WScript.StdOut.WriteLine("Select menu item: ") 
s = WScript.StdIn.ReadLine 
set WshShell = WScript.CreateObject("WScript.Shell") 

if (s="1") then 
WScript.StdOut.WriteLine("Kononovich Egor - ITI-11") 

elseif(s="2") then 

WScript.StdOut.WriteLine("Type the full path to the file: ") 
path = WScript.StdIn.ReadLine 
WScript.StdOut.WriteLine("Type the file extension: ") 
ext = WScript.StdIn.ReadLine 
Code = WshShell.Run("dot_1.bat " + path + " " + ext, 0, true) 
WScript.Sleep(2000) 
WScript.StdOut.WriteLine ("The file has been successfully created")

elseif(s="3") then 
Set FSO = WScript.CreateObject("Scripting.FileSystemObject")
Set Drives = FSO.Drives
Set C = FSO.Drives
str = ""
s = ""
For Each D in Drives
s = s & D.DriveLetter
s = s & " - "
if (D.IsReady) then
ss = D.VolumeName
FreeSpace = D.FreeSpace/1024/1024/1024
s = s & FreeSpace
s = s & " Gb "
WScript.Echo s
str = str & s
s = "" & VbCrLf
else
ss = "Устройство не готово"
end if
Next

set txt = FSO.CreateTextFile ("D:\OC\name.txt", true)
txt.WriteLine(str)
txt.Close
WScript.StdOut.WriteLine ("The file has been successfully created")
end if 
loop until (s="4")
