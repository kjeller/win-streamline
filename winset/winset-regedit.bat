setlocal EnableDelayedExpansion

@echo off
for /f "UseBackQ tokens=1-4 Delims=," %%a in (my-regedit-list.csv) do (
    set first=%%a
    set first=!first:~0,1!
    if "!first!" EQU "#" (
        rem Ignore comment
    ) else (
        reg add %%a /f /v %%b /t %%c /d %%d
    ) 
)