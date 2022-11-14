::
:: Created by Tikolu
:: github.com/Tikolu/ChromeFileIcon
::


@ECHO OFF
CD /D %~dp0

TITLE Chrome File Icon Installer

IF NOT EXIST icon.ico (
	ECHO Error locating icon file
	ECHO Please ensure ZIP file is extracted before running the installer
	ECHO.
	ECHO Press any key to exit...
	PAUSE>NUL
	EXIT
)

NET session>NUL 2>&1
IF %errorLevel% NEQ 0 (
	ECHO Please run this script as administrator
	ECHO.
	ECHO Press any key to exit...
	PAUSE>NUL
	EXIT
)

ECHO Chrome File Icon Installer by Tikolu
ECHO.
ECHO For more information please visit github.com/Tikolu/ChromeFileIcon
ECHO.
ECHO.
ECHO Press any key to install icon...
PAUSE>NUL
ECHO F | XCOPY /E /I /Y icon.ico "%programfiles%\Tikolu\IconExtensions\chrome.ico">NUL
REG ADD HKEY_CLASSES_ROOT\Applications\chrome.exe\DefaultIcon /ve /t REG_SZ /d "C:\Program Files\Tikolu\IconExtensions\chrome.ico" /f
REG ADD HKEY_CLASSES_ROOT\ChromeHTML\DefaultIcon /ve /t REG_SZ /d "C:\Program Files\Tikolu\IconExtensions\chrome.ico" /f

ECHO.
IF %errorLevel% == 0 ECHO Icon installed!
ECHO.
ECHO Press any key to restart explorer...
ECHO (icons only visible after restart)
PAUSE>NUL
TASKKILL /IM explorer.exe /F>NUL
EXPLORER
