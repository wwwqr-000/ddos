Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "exec.vbs" & Chr(34), 0
Set WshShell = Nothing