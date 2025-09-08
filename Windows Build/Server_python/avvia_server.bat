@echo off
echo ========================================
echo Avvio del server SERGE
echo ========================================
echo.

:: Attiva l'ambiente virtuale
call venv\Scripts\activate

:: Avvia il server Python
python server.py

pause
