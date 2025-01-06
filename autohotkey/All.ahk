#Requires AutoHotkey v2
; Install the keyboard hook to capture the real key state of the keyboard
InstallKeybdHook(true)
; Disable the CapsLock key
SetCapsLockState("alwaysoff")
; Send esc key when Capslock is pressed as default
g_DoNotAbortSendEsc := true

; Map Windows Key + Backspace to Delete
#Backspace::Send "{Delete}"

; Bind Alt + Q to exit the application
!q:: {
    WinClose("A")
}

$*Capslock::{ ; Capture CapsLock key press
  global g_DoNotAbortSendEsc ; use global variable g_DoNotAbortSendEsc
  g_DoNotAbortSendEsc := true ; set g_DoNotAbortSendEsc to true
  Send("{LControl Down}") ; send Ctrl key down
  KeyWait("CapsLock") ; capture CapsLock key up
  Send("{LControl Up}") ; send Ctrl key up
  if (A_PriorKey == "CapsLock" ; if the last key is Capslock
     && g_DoNotAbortSendEsc) { ; if the g_DoNotAbortSendEsc is true
    Send("{Esc}") ; send Esc key
  }
  return
}

; capture any key with Ctrl key down
~^*a:: ; * means can be used with any modifier key, ~ means donot block the original key, ^ means Ctrl key, a means the key is a
~^*b::
~^*c::
~^*d::
~^*e::
~^*f::
~^*g::
~^*h::
~^*i::
~^*j::
~^*k::
~^*l::
~^*m::
~^*n::
~^*o::
~^*p::
~^*q::
~^*r::
~^*s::
~^*t::
~^*u::
~^*v::
~^*w::
~^*x::
~^*y::
~^*z::
~^*1::
~^*2::
~^*3::
~^*4::
~^*5::
~^*6::
~^*7::
~^*8::
~^*9::
~^*0::
~^*Space::
~^*Backspace::
~^*Delete::
~^*Insert::
~^*Home::
~^*End::
~^*PgUp::
~^*PgDn::
~^*Tab::
~^*Enter::
~^*,::
~^*.::
~^*/::
~^*;::
~^*'::
~^*[::
~^*]::
~^*\::
~^*-::
~^*=::
~^*`::
~^*F1::
~^*F2::
~^*F3::
~^*F4::
~^*F5::
~^*F6::
~^*F7::
~^*F8::
~^*F9::
~^*F10::
~^*F11::
~^*F12::{
  global g_DoNotAbortSendEsc
  g_DoNotAbortSendEsc := false
}

#Warn ; Enable warnings to assist with detecting common errors.
SendMode "Input" ; Recommended for new scripts due to its superior speed and reliability.

; AHK Command ; key = Effect (Description)
; ALT Keypress Implied for all below

!k::Send "{Up}" ; i UP (Cursor up line)
!j::Send "{Down}" ; k DOWN (Cursor down line)
!h::Send "{Left}" ; j LEFT (Cursor left one character)
!l::Send "{Right}" ; l RIGHT (Cursor right one character)