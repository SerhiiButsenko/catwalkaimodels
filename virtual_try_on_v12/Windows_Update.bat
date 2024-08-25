@echo off

set "url=https://raw.githubusercontent.com/FurkanGozukara/Stable-Diffusion/main/CustomPythonScripts/app_VTON.py"
set "folder=IDM-VTON"
set "filename=app_VTON.py"

rem if not exist "%folder%" mkdir "%folder%"
rem powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%folder%\%filename%')"

cd IDM-VTON

git pull

echo VTON APP updated successfully

REM Pause to keep the command prompt open
pause