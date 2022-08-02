#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#UseHook on

; If it's not working for your screen resolution / mouse sensitivity you may need to change the RelativeMove number from 11000 to something else

Msgbox, Press F9 to move items from left to right and Shift F9 to move items from right to left. You may need to edit RelativeMove value to match your system configuration. F10 to stop. F11 to quit.

SendMouse_RelativeMove(x, y) {
    DllCall("mouse_event", "UInt", 0x01, "UInt", x, "UInt", y)
}


*f9::

Loop
{



Send, {LButton Down}

Sleep 100


SendMouse_RelativeMove(11000,0)


Sleep 210

Send, {LButton Up}


SendMouse_RelativeMove(-11000,0)





Sleep 210
}

+f9::

Loop
{



Send, {LButton Down}

Sleep 100


SendMouse_RelativeMove(-11000,0)


Sleep 210

Send, {LButton Up}


SendMouse_RelativeMove(11000,0)





Sleep 210
}

return


*f10::

reload

+f11::

exitapp