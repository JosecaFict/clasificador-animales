@echo off
chcp 65001 > nul
title Servidor Clasificador de Animales - IA
cls
echo ======================================================================
echo           CLASIFICADOR DE ANIMALES CON IA (TENSORFLOW.JS)
echo ======================================================================
echo.
echo Iniciando servidor local en http://localhost:8000 ...
echo.

cd /d "%~dp0"
start "" "http://localhost:8000"

py -3.12 -m http.server 8000
if %ERRORLEVEL% NEQ 0 (
    python -m http.server 8000
)

pause
