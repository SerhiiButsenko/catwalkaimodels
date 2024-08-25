@echo off

cd IDM-VTON

call .\venv\Scripts\activate.bat || exit /b
REM SET CUDA_VISIBLE_DEVICES=0  - this is used to set certain CUDA device visible only used
set PYTHONWARNINGS=ignore
REM SET CUDA_VISIBLE_DEVICES=1

echo Modify this file and add --share if you want Gradio share
echo.
echo Options VRAM usages are as below. Fastest is FP16 and no cpu offloading (1+1)
echo 1+1 = 16.5 GB, 1+2 = 12 GB , 1+3 = 10 GB, 2+1 = 15 GB, 2+2 = 10.3 GB , 2+3 = 8.2 GB
echo.

echo Please select an option:
echo 1. Default - Faster but higher VRAM
echo 2. Enable CPU Offloading - Reduces VRAM but slightly slower same quality
echo.

set /p cpuoffload="Enter your choice (1-2): "

echo Please select an option:
echo 1. Default Precision - Higher quality higher VRAM
echo 2. FP8 Precision - Slightly lower quality medium VRAM
echo 3. FP4 Precision - More slightly lower quality lower VRAM 
echo.

set /p precision="Enter your choice (1-3): "

set "lowvram="
set "load_mode="

if "%cpuoffload%" == "2" (
    set "lowvram=--lowvram"
)

if "%precision%" == "2" (
    set "load_mode=--load_mode 8bit"
)

if "%precision%" == "3" (
    set "load_mode=--load_mode 4bit"
)

python app_VTON.py %lowvram% %load_mode%


pause
