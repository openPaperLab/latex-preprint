@echo off
setlocal

cd /d "%~dp0"

echo Building main.tex with latexmk...
echo.

where latexmk >nul 2>nul
if errorlevel 1 (
  echo [ERROR] latexmk was not found in PATH.
  echo Please install TeX Live or MiKTeX, or add latexmk to PATH.
  echo.
  goto :pause_and_exit
)

if not exist "output" mkdir "output"

latexmk -pdf -outdir=output -interaction=nonstopmode -halt-on-error main.tex
if errorlevel 1 (
  echo.
  echo [ERROR] Build failed. Check output\main.log for details.
  echo.
  goto :pause_and_exit
)

echo.
echo [OK] Build succeeded:
echo %CD%\output\main.pdf
echo.

:pause_and_exit
if /I "%~1"=="/nopause" exit /b %errorlevel%
pause
