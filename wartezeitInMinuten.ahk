#Persistent

^!SC028 Up::
    ; Erstes Popup für "Kosten des Objekts"
    InputBox, inp1, Kosten des Objekts, Bitte eingeben:
    Sleep, 200

    ; Zweites Popup für "Kapital"
    InputBox, inp2, Kapital, Bitte eingeben:
    Sleep, 200

    ; Drittes Popup für "Einkommen pro Stunde"
    InputBox, inp3, Einkommen pro Stunde, Bitte eingeben:
    Sleep, 200
; "Alt + Enter"
Send, !{Enter}
Sleep, 20
Send, {Blind}{Alt Up}  ; Sicherstellen, dass Alt wirklich losgelassen wird
Sleep, 20

; Text "rechner"
Send, rechner
Sleep, 300

; "Enter"
Send, {Enter}
Sleep, 1000

    ; Berechnungsteil
    Send, % "$" inp1 ; Kosten des Objekts
    Sleep, 10
    Send, -
    Sleep, 10
    Send, % "$" inp2 ; Kapital
    Sleep, 10
    Send, {Enter}

    Send, ^c ; Strg + C (Kopieren)
    Send, {Ctrl Up}  ; Stellt sicher, dass die Strg-Taste losgelassen wird
    Send, {c Up}  ; Falls C ebenfalls explizit losgelassen werden soll
    Sleep, 10
    Send, {Del}  ; Löschen
    Send, {Del Up}
    Sleep, 10
    Send, 100
    Sleep, 10
    Send, /
    Sleep, 10
    Send, % "$" inp3
    Sleep, 10
    Send, *
    Sleep, 10
    Send, ^v  ; Strg + V (Einfügen)
    Sleep, 10
    Send, *
    Sleep, 10
    Send, 60
    Sleep, 10
    Send, /
    Sleep, 10
    Send, 100
    Sleep, 10
    Send, {Enter}
return
