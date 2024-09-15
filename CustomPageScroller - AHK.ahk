#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ; Makes it so only one script instance is running at any time and skips prompt.


#IfWinActive ahk_exe chrome.exe  ; Configuration for Chrome.
PgUp::  ; Scroll up half page.
	Send, {WheelUp 3}
	return
^PgUp::  ; Scroll up full page.
	Send, {WheelUp 6}
	return
PgDn::  ; Scroll down half page.
	Send, {WheelDown 3}
	return
^PgDn::  ; Scroll down full page.
	Send, {WheelDown 6}
	return

#IfWinActive ahk_exe devenv.exe  ; Configurations for Visual Studio. 
	PgUp::  ; Scroll up half page.
		Send, ^{Up 23}
		return
	^PgUp::  ; Scroll up full page.
		Send, ^{Up 45}
		return
	PgDn::  ; Scroll down half page.
		Send, ^{Down 23}
		return
	^PgDn::  ; Scroll down full page.
		Send, ^{Down 45}
		return
	