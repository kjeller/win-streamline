setlocal EnableDelayedExpansion
set scriptpath=%~dp0

@echo off
for /f "UseBackQ tokens=1-4 Delims=," %%a in (%scriptpath%\my-regedit-list.csv) do (
    set first=%%a
    set first=!first:~0,1!
    if "!first!" EQU "#" (
        rem Ignore comment
    ) else (
        echo Running command: reg add %%a /f /v %%b /t %%c /d %%d
        reg add %%a /f /v %%b /t %%c /d %%d
    ) 
)