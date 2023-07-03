@echo off
FOR /F %%i in (my-application-list.txt) DO (
    winget install %%i
    if %ERRORLEVEL% EQU 0 (
        Echo %%i installed successfully.
    ) else (
        Echo Installed %%i (errorlevel=%ERRORLEVEL%)
    )
)