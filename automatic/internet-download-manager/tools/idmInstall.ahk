#NoEnv
#NoTrayIcon

winTitleInstall = Internet Download Manager Installation Wizard
WinWait, %winTitleInstall%
ControlClick, &Next, %winTitleInstall%

winTitleLicense = Please read IDM license
WinWait, %winTitleLicense%
ControlClick, I accept the terms in the license agreement, %winTitleLicense%
ControlClick, &Next, %winTitleLicense%

winTitleLocation = Choose Destination Location
WinWait, %winTitleLocation%
ControlClick, &Next, %winTitleLocation%

winTitleStart = Start Installation of Internet Download Manager
WinWait, %winTitleStart%
ControlClick, &Next, %winTitleStart%

winTitleComplete = Installation Complete
winTitleCompleteText = Internet Download Manager has been successfully installed.
WinWait, %winTitleComplete%, %winTitleCompleteText%
ControlClick, &Finish, %winTitleComplete%
