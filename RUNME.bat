:: Goal > setup WallpaperEngine_From_Wish

cls
::Trun off useless text
@ECHO OFF

:: Enable Powershell scripts to run
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force}"


:: Get current Directory
SET CurrentDIR=%~dp0

:: Go to scripts Directory
cd %CurrentDIR%\scripts

:: Reset wallpaper.xml
del wallpaper.xml
cls

:: create custom wallpaper.xml file
ECHO ^<?xml version="1.0" encoding="UTF-16"?^> >> wallpaper.xml
ECHO ^<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^> >> wallpaper.xml
ECHO ^<RegistrationInfo^> >> wallpaper.xml
ECHO   ^<Date^>2023-04-11T12:21:52.9147066^</Date^> >> wallpaper.xml
ECHO   ^<Author^>GimcholasLim^</Author^> >> wallpaper.xml
ECHO   ^<Description^>changes wall paper according to day^</Description^> >> wallpaper.xml
ECHO   ^<URI^>\wallpaper^</URI^> >> wallpaper.xml
ECHO ^</RegistrationInfo^> >> wallpaper.xml
ECHO ^<Triggers^> >> wallpaper.xml
ECHO   ^<CalendarTrigger^> >> wallpaper.xml
ECHO     ^<StartBoundary^>2023-04-11T00:00:00^</StartBoundary^> >> wallpaper.xml
ECHO     ^<Enabled^>true^</Enabled^> >> wallpaper.xml
ECHO     ^<ScheduleByDay^> >> wallpaper.xml
ECHO       ^<DaysInterval^>1^</DaysInterval^> >> wallpaper.xml
ECHO     ^</ScheduleByDay^> >> wallpaper.xml
ECHO   ^</CalendarTrigger^> >> wallpaper.xml
ECHO   ^<LogonTrigger^> >> wallpaper.xml
ECHO     ^<Enabled^>true^</Enabled^> >> wallpaper.xml
ECHO   ^</LogonTrigger^> >> wallpaper.xml
ECHO   ^<BootTrigger^> >> wallpaper.xml
ECHO     ^<Enabled^>true^</Enabled^> >> wallpaper.xml
ECHO   ^</BootTrigger^> >> wallpaper.xml
ECHO ^</Triggers^> >> wallpaper.xml
ECHO ^<Principals^> >> wallpaper.xml
ECHO   ^<Principal id="Author"^> >> wallpaper.xml
ECHO     ^<UserId^>%computername%\%username%^</UserId^> >> wallpaper.xml
ECHO     ^<LogonType^>InteractiveToken^</LogonType^> >> wallpaper.xml
ECHO     ^<RunLevel^>LeastPrivilege^</RunLevel^> >> wallpaper.xml
ECHO   ^</Principal^> >> wallpaper.xml
ECHO ^</Principals^> >> wallpaper.xml
ECHO ^<Settings^> >> wallpaper.xml
ECHO   ^<MultipleInstancesPolicy^>StopExisting^</MultipleInstancesPolicy^> >> wallpaper.xml
ECHO   ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^> >> wallpaper.xml
ECHO   ^<StopIfGoingOnBatteries^>true^</StopIfGoingOnBatteries^> >> wallpaper.xml
ECHO   ^<AllowHardTerminate^>true^</AllowHardTerminate^> >> wallpaper.xml
ECHO   ^<StartWhenAvailable^>false^</StartWhenAvailable^> >> wallpaper.xml
ECHO   ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^> >> wallpaper.xml
ECHO   ^<IdleSettings^> >> wallpaper.xml
ECHO     ^<StopOnIdleEnd^>true^</StopOnIdleEnd^> >> wallpaper.xml
ECHO ^<RestartOnIdle^>false^</RestartOnIdle^> >> wallpaper.xml
ECHO ^</IdleSettings^> >> wallpaper.xml
ECHO ^<AllowStartOnDemand^>true^</AllowStartOnDemand^> >> wallpaper.xml
ECHO ^<Enabled^>true^</Enabled^> >> wallpaper.xml
ECHO ^<Hidden^>false^</Hidden^> >> wallpaper.xml
ECHO ^<RunOnlyIfIdle^>false^</RunOnlyIfIdle^> >> wallpaper.xml
ECHO ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^> >> wallpaper.xml
ECHO ^<UseUnifiedSchedulingEngine^>true^</UseUnifiedSchedulingEngine^> >> wallpaper.xml
ECHO ^<WakeToRun^>false^</WakeToRun^> >> wallpaper.xml
ECHO ^<ExecutionTimeLimit^>PT1M^</ExecutionTimeLimit^> >> wallpaper.xml
ECHO ^<Priority^>7^</Priority^> >> wallpaper.xml
ECHO ^</Settings^> >> wallpaper.xml
ECHO ^<Actions Context="Author"^> >> wallpaper.xml
ECHO   ^<Exec^> >> wallpaper.xml
ECHO     ^<Command^>WSCRIPT^</Command^> >> wallpaper.xml
ECHO     ^<Arguments^>caller.vbs^</Arguments^> >> wallpaper.xml
ECHO     ^<WorkingDirectory^>%cd%^</WorkingDirectory^> >> wallpaper.xml
ECHO   ^</Exec^> >> wallpaper.xml
ECHO ^</Actions^> >> wallpaper.xml
ECHO ^</Task^> >> wallpaper.xml

:: Creating task
schtasks /create /xml "%CurrentDIR%\scripts\wallpaper.xml" /tn "WallpaperEngine_From_Wish"
schtasks /run /tn "WallpaperEngine_From_Wish"
:: Edit task
pause