#NoEnv
#NoTrayIcon

winTitleUninstall = Select Uninstall Method
WinWait, %winTitleUninstall%
ControlClick, &Next, %winTitleUninstall%

winTitlePerform = Perform Uninstall
WinWait, %winTitlePerform%
ControlClick, &Finish, %winTitlePerform%

winTitleReboot = IDM Uninstall
WinWait, %winTitleReboot%
ControlClick, Cancel, %winTitleReboot%
