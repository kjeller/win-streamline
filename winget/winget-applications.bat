set scriptpath=%~dp0

@echo off
for /f %%i in (%scriptpath%\my-application-list.csv) do (
    winget install %%i
    if %errorlevel% equ 0 (
        echo %%i installed successfully.
    ) else (
        echo Installed %%i (errorlevel=%errorlevel%)
    )
)