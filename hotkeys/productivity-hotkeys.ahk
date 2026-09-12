#Requires AutoHotkey v2.0
; Safe productivity hotkeys: no hidden actions, no external network calls.

^!n:: {
    Run "notepad.exe"
}

^!t:: {
    Run "wt.exe"
}

^!e:: {
    Run "explorer.exe"
}
