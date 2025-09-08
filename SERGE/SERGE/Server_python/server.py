from fastapi import FastAPI, Form
from transformers import pipeline
import uvicorn
from pathlib import Path
import sys

app = FastAPI()

# Percorso relativo a questo file
base_path = Path(__file__).parent
model_path = base_path / "Model" / "PJDScenarios"

# Converte in formato con "/" anche su Windows
model_path_str = model_path.as_posix()

# File richiesti (uno dei due per i pesi: .bin o .safetensors)
required_files = ["config.json", "generation_config.json"]
weight_files = ["pytorch_model.bin", "model.safetensors"]
tokenizer_files = ["tokenizer.json", "vocab.json"]

# Controllo esistenza cartella modello
if not model_path.exists():
    print(f"❌ Errore: cartella modello non trovata: {model_path_str}")
    sys.exit(1)

# Controllo file base
missing = [f for f in required_files if not (model_path / f).exists()]

# Controllo file pesi (almeno uno dei due)
if not any((model_path / f).exists() for f in weight_files):
    missing.append("pesi del modello (.bin o .safetensors)")

# Controllo tokenizer (almeno uno valido)
if not any((model_path / f).exists() for f in tokenizer_files):
    missing.append("tokenizer.json o vocab.json")

if missing:
    print(f"❌ Errore: nella cartella modello mancano: {', '.join(missing)}")
    sys.exit(1)

#print(f"✅ Carico modello da: {model_path_str}")

# Carica il modello
generator = pipeline("text-generation", model=model_path_str, tokenizer=model_path_str)

@app.post("/generate")
async def generate(prompt: str = Form(...)):
    output = generator(
        prompt,
        max_length=150,
        max_new_tokens=200,
        do_sample=True,
        #temperature=0.8,
        temperature=0.6,
        top_k=40,                # considera solo i 40 token più probabili
        top_p=0.9,                # nucleus sampling per eliminare token improbabili
        #repetition_penalty=1.30,
        repetition_penalty=1.50,
    )
    return {"response": output[0]["generated_text"]}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
