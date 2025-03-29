MsgBox "You been pwned by trungqt.", 64, "BKSEC"

Set objShell = CreateObject("WScript.Shell")

scriptPath = WScript.ScriptFullName

objShell.Run "wscript.exe //nologo //e:vbscript ""CreateObject(""WScript.Shell"").Run ""cmd.exe /c del \"""" & scriptPath & "\"""", 0, False: WScript.Sleep 1000""", 0, False
