@echo off
echo ========================================
echo Installazione ambiente Python per SERGE
echo ========================================
echo.

:: 1. Controllo se Python è installato
py -3 --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python non trovato. Scarico e installo...
    curl -o python_installer.exe https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe
    start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1
    del python_installer.exe
) else (
    echo Python gia' installato.
)

:: 2. Creazione ambiente virtuale (solo se non esiste)
if not exist venv (
    echo Creo l'ambiente virtuale...
    py -3 -m venv venv
) else (
    echo Ambiente virtuale gia' esistente.
)

:: 3. Aggiorno pip e installo pacchetti nell'ambiente virtuale
echo Installo pacchetti richiesti nell'ambiente virtuale...
call venv\Scripts\activate
venv\Scripts\python.exe -m pip install --upgrade pip
venv\Scripts\python.exe -m pip install transformers uvicorn fastapi torch python-multipart

:: 4. Avvio server.py direttamente con Python del venv
echo.
echo Avvio server...
venv\Scripts\python.exe server.py

pause
