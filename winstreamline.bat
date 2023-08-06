@echo off
set scriptpath=%~dp0

start /b %scriptpath%\winget\winget-applications.bat
start /b %scriptpath%\winset\winset-regedit.bat