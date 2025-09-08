#!/bin/bash

echo "========================================"
echo " Installazione ambiente Python per SERGE "
echo "========================================"
echo ""

# Ottieni il percorso dell'app (partendo da MacOS/)
APP_DIR="$(cd "$(dirname "$0")/.." && pwd)"
RES_DIR="$APP_DIR/Resources"

# 1. Controllo se Python 3 è installato
if ! command -v python3 &> /dev/null
then
    echo "❌ Python3 non trovato. Installalo con Homebrew:"
    echo "   brew install python3"
    exit 1
else
    echo "✅ Python3 trovato: $(python3 --version)"
fi

# 2. Creazione ambiente virtuale (solo se non esiste)
if [ ! -d "$RES_DIR/venv" ]; then
    echo "Creo l'ambiente virtuale..."
    python3 -m venv "$RES_DIR/venv"
else
    echo "Ambiente virtuale gia' esistente."
fi

# 3. Attivo il venv e installo i pacchetti
echo "Installo pacchetti richiesti nell'ambiente virtuale..."
source "$RES_DIR/venv/bin/activate"
pip install --upgrade pip
pip install transformers uvicorn fastapi torch python-multipart

# 4. Avvio server.py con Python del venv
echo ""
echo "Avvio server..."
python "$RES_DIR/server.py"
