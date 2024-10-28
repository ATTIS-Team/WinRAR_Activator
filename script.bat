@echo off
title WinRAR Activation Script v1.0
setlocal
set "batch_dir=%~dp0"
set "program=WinRAR.exe"
set "file_to_open=rarkey.rar"
set "error_script=ErrMsgBox.vbs"
echo ##############################################################################################################
echo                                         WinRAR Activation Script v1.0 
echo ##############################################################################################################
echo.
echo 1. Execute the script and activate/patch WinRAR
echo 2. Exit
echo.
set /p choice="Please choose an option (1 or 2): "
if "%choice%"=="1" (
    cd /d "%batch_dir%"
    if exist "%program%" (
        "%program%" "%file_to_open%"
    ) else (
        cscript //nologo "%error_script%"
    )
) else (
    echo Exiting...
    exit /b
)
endlocal