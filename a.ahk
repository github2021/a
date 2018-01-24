^WheelDown::return

^WheelUp::return

; ^+q::
; MsgBox, GWP
; Return





CapsLock::
Send, console.log();{left}{left}
Return

^CapsLock::
Send, import {{}{}} from '';{Left}{Left}
Return


^+q::
WinActivate, ahk_class CabinetWClass  
ControlGetText, OutputVar, Edit1, ahk_class CabinetWClass

ifwinactive,ahk_class CabinetWClass
{
  ControlGetText, address , edit1,ahk_class CabinetWClass
    WinGetText, full_path, A
    StringSplit, word_array, full_path, `n
        Loop, %word_array0%
    {
        IfInString, word_array%A_Index%, Address
        {
            full_path := word_array%A_Index%
            break
        }
    }  
        full_path := RegExReplace(full_path, "^Address: ", "")
            StringReplace, full_path, full_path, `r, , all
a :=  """" . full_path . """"
Run "C:\Program Files\Git\git-bash.exe" --cd="%full_path%"
;Run "C:\Program Files\ConEmu\ConEmu64.exe" -Dir "%full_path%"
}
Return

; ^+`::
; Send, import {{}{}} from '';{Left}{Left}
; Return

; ^+Tab::
; Send, import {{}{}} from '';{Left}{Left} 
; Return

; ^q::
; Send, console.log();{left}{left}
; Return


^Ins:: 
WinActivate, ahk_class CabinetWClass  
ControlGetText, OutputVar, Edit1, ahk_class CabinetWClass

ifwinactive,ahk_class CabinetWClass
{
  ControlGetText, address , edit1,ahk_class CabinetWClass
    WinGetText, full_path, A
    StringSplit, word_array, full_path, `n
        Loop, %word_array0%
    {
        IfInString, word_array%A_Index%, Address
        {
            full_path := word_array%A_Index%
            break
        }
    }  
        full_path := RegExReplace(full_path, "^Address: ", "")
            StringReplace, full_path, full_path, `r, , all
a :=  """" . full_path . """"
;Run "C:\Program Files\Git\git-bash.exe" --cd="%full_path%"
Run "C:\Program Files\ConEmu\ConEmu64.exe" -Dir "%full_path%"
}
Return






^+j::
Reload
return







^+Ins::
    WinGetText, full_path, A
    StringSplit, word_array, full_path, `n

        Loop, %word_array0%
    {
        IfInString, word_array%A_Index%, Address
        {
            full_path := word_array%A_Index%
            break
        }
    }  

   full_path := RegExReplace(full_path, "^Address: ", "")
   StringReplace, full_path, full_path, `r, , all
   ;Run "C:\Program Files\Git\git-bash.exe" --cd="%full_path%"
   Run "C:\Program Files\Sublime Text 3\sublime_text.exe" "%full_path%"

   return




