#NoEnv
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time
#MaxHotkeysPerInterval 2000
SetTitleMatchMode, 2 ; Partial title string matching

;Hub20
;------------------
;|  ENC1   ENC2   |  ENC1:Clockwise: u
;| a   b   c   d  |  ENC1:Anticlockwise: v
;| e   f   g   h  |  ENC2:Button: w
;| i   j   k   l  |  ENC2:Clockwise: x
;| m   n   o   p  |  ENC2:Anticlockwise: y
;| q   r   s   t  |  ENC2:Button: z
;------------------

; Remember to uncomment lines before using them, and restart the script each time!

; Run the below when in KiCad
#if (getKeyState("F23", "P")) and if WinActive("ahk_exe kicad.exe")
F23::return

;------------------------------------------------------------------------------
; Row 0
;------------------------------------------------------------------------------

;u::{}

;v::{}

;w::{}

;x::{}

;y::{}

;z::{}

;------------------------------------------------------------------------------
; Row 1
;------------------------------------------------------------------------------

;a::{}

;b::{}

;c::{}

;d::{}

;------------------------------------------------------------------------------
; Row 2
;------------------------------------------------------------------------------

;e::{}

;f::{}

;g::{}

;h::{}

;------------------------------------------------------------------------------
; Row 3
;------------------------------------------------------------------------------

;i::{}

;j::{}

;k::{}

;l::{}

;------------------------------------------------------------------------------
; Row 4
;------------------------------------------------------------------------------

;m::{}

;n::{}

;o::{}

;p::{}

;------------------------------------------------------------------------------
; Row 5
;------------------------------------------------------------------------------

;q::{}

;r::{}

;s::{}

;t::{}

; Otherwise, run the below
#if (getKeyState("F23", "P"))
F23::return

;------------------------------------------------------------------------------
; Row 0
;------------------------------------------------------------------------------

;u::{}

;v::{}

;w::{}

;x::{}

;y::{}

;z::{}

;------------------------------------------------------------------------------
; Row 1
;------------------------------------------------------------------------------

;a::{}

;b::{}

;c::{}

;d::{}

;------------------------------------------------------------------------------
; Row 2
;------------------------------------------------------------------------------

;e::{}

;f::{}

;g::{}

;h::{}

;------------------------------------------------------------------------------
; Row 3
;------------------------------------------------------------------------------

;i::{}

;j::{}

;k::{}

;l::{}

;------------------------------------------------------------------------------
; Row 4
;------------------------------------------------------------------------------

;m::{}

;n::{}

;o::{}

;p::{}

;------------------------------------------------------------------------------
; Row 5
;------------------------------------------------------------------------------

;q::{}

;r::{}

;s::{}

;t::{}