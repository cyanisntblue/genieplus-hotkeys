#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_exe msedge.exe")

clearform := "__doPostBack('hld$main$_top$CirculationClearForm_0','')"
checkin := "__doPostBack('hld$main$cirItems$hld$_top$CirculationCheckinItem_0','')"
checkout := "__doPostBack('hld$main$cirItems$hld$_top$CirculationCheckoutItem_1','')"


MainFunction(id){
    Send "^l"
    Sleep 25
    temp := A_Clipboard
    A_Clipboard := id
    Send "javascript:"
    Sleep 100
    Send "{Right}"
    Sleep 25
    Send "^v"
    Sleep 25
    Send "{Enter}"
    A_Clipboard := temp
}

; CLEAR FORM
Pause::{
    MainFunction(clearform)
}

; CHECK-IN
PrintScreen::{
    MainFunction(checkin)
}

; CHECK-OUT (Settings > Acessibility > Keyboard > "Use Printscreen Key to open screen capture OFF)
ScrollLock::{
    MainFunction(checkout)
}