Persistent
#SingleInstance Force


if not A_IsAdmin {
   Run("*RunAs `"" A_ScriptFullPath "`"")
   ExitApp()
}


; Make the windows key not open the start menu
~LWin::Send "{Blind}{vkE8}"


; Swap capslock and esc keys
CapsLock::Esc
Esc::CapsLock


; change windows lockscreen shortcut
; override and disable default lockscreen shortcut Win+L
#l:: { ; enable lockscreen
    global
    RegWrite(0x00000001, "REG_DWORD", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon", "DisableLockWorkstation")

    Send "{Blind}{vkE8}{l}"

    return
}

<#<!l:: { ; disable lockscreen
    global
    RegWrite(0x00000000, "REG_DWORD", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon", "DisableLockWorkstation")

    ; lock the workstation
    DllCall("LockWorkStation")

    return
}

; sleep. lwin + lalt + s
<#<!s:: {
    DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
}


; borderless fullscreen shortcut
<#<+f:: {
    Send "{Blind}{vkE8}+"

    WS_CAPTION := 0xC00000
    try {
        id := WinActive('A')
        if (WinGetStyle(id) & WS_CAPTION)
            WinSetStyle('-' WS_CAPTION, id)
            ,WinMaximize(id)
        else WinSetStyle('+' WS_CAPTION, id)
            ,WinRestore(id)
    }
}
