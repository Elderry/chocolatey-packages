#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 


Loop, 5
{
Var_1 = 0
sleep 10000
IfWinExist, ExpressVPN Setup
  {
  WinActivate
  Send {tab}
  Send {tab}
  Send {tab}
  Send {enter}

  Var_1 = 1
  }
if Var_1 = 1
  break
if Var_1 = 0
  continue
}

sleep 30000

Loop, 5
{
Var_2 = 0
sleep 10000
IfWinExist, Windows Security
  {
  WinActivate
  Send {i}

  Var_2 = 1
  }
if Var_2 = 1
  break
if Var_2 = 0
  continue
}

sleep 30000

Loop, 5
{
sleep 10000
IfWinExist, ExpressVPN Setup
  {
  Run, %comspec% /c "taskkill /T /FI "WindowTitle eq expressvpn*""
  }

IfWinExist, ExpressVPN
  {
  Run, %comspec% /c "taskkill /T /FI "WindowTitle eq ExpressVpn*""
  ExitApp
  }
}