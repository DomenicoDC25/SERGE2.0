#!/bin/bash

echo "========================================"
echo " Avvio del server SERGE "
echo "========================================"
echo ""

# Vai nella cartella Resources, relativa allo script in MacOS
cd "$(dirname "$0")/../Resources"

# Attiva l'ambiente virtuale
source ../Resources/venv/bin/activate

# Avvia il server Python
python server.py
