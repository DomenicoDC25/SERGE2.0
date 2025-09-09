# SERGE 2.0 & IA: Integrazione di un modello IA in SERGE 2.0

<h3 align="center"></h3>
<p align="center">
Un progetto open-source sviluppato con Unity3D e Photon Unity Networking, basato sul serious game SERGE, con l’obiettivo di creare un ambiente virtuale tridimensionale per scopi accademici ed educativi.  
Questa versione, **SERGE 2.0**, integra un modello di intelligenza artificiale capace di generare automaticamente scenari di progetto, permettendo agli utenti di vivere esperienze dinamiche e personalizzate, arricchendo l’apprendimento collaborativo e l’interazione all’interno del gioco.
</p>

<p align="center">
Questo progetto si basa sul Serious Game SERGE descritto nell’articolo: [ACM Link](https://dl.acm.org/doi/abs/10.1145/3639474.3640085)
</p>

<!-- <p align="center"><img src="blobs/presentation_pic.jpg?raw=true" width="800" heigth="600"></p> -->

---

## Descrizione dell’Applicazione
L’obiettivo principale di questo progetto è stato sviluppare e validare una ricreazione digitale del serious game **SERGE**, un gioco educativo progettato per supportare studenti e accademici nell’apprendimento della gestione del rischio.  
La piattaforma consiste in una **sala conferenze tridimensionale** dove è possibile interagire con altri giocatori, manipolare oggetti e partecipare alle dinamiche del gioco.  

Il progetto si basa su precedenti lavori:  
- *The Metaverse Classroom* di Viviana Pentangelo (vipenti) - Università di Salerno  
- La digitalizzazione del gioco realizzata da Nicola Modugno  

**SERGE 2.0** integra un modello di intelligenza artificiale che genera automaticamente scenari di progetto, offrendo esperienze di gioco dinamiche, personalizzate e maggiormente immersive.

<div align="center">
  <img src="blobs/stripe1.JPG" width="150"/>
  <img src="blobs/stripe3.png" width="195"/>
  <img src="blobs/stripe2.JPG" width="304"/>
  <br>
  <img src="blobs/stripe4.png" width="202"/>
  <img src="blobs/stripe5.png" width="202"/>
</div>

---

## Contenuto del Repository
Questo repository contiene il codice completo del progetto Unity per **SERGE 2.0**, comprensivo delle funzionalità di gioco e dell’integrazione con il modello di intelligenza artificiale per la generazione di scenari di progetto.

**Releases incluse:**
- **Windows Build**: Applicazione pronta all’uso per Windows  
- **MacOS Build.app**: Applicazione pronta all’uso per MacOS  
- **PJDScenarios**: Modello IA per generazione scenari di progetto  

Il repository permette sia di esplorare e modificare il progetto Unity completo, sia di utilizzare direttamente le versioni compilate dell’applicazione e il modello IA per sperimentare scenari personalizzati.

---

## Come Installare

### Solo Applicazione

#### Windows
1. **Scaricare l’applicazione**  
   Scarica la cartella **Windows Build** dalla sezione Releases e estraila in una posizione a tua scelta.  

2. **Avvio del gioco**  
   Apri la cartella **Windows Build** e fai doppio clic su `SERGE.exe`.

3. **Avvio del server locale (solo host)**  
   a. Installazione Python, librerie e ambiente virtuale:  
   - All’interno della cartella `Server_python`, esegui `avviamento_python_server.bat`.  
     Questo installerà Python (se necessario) e tutte le librerie richieste.  

   b. Avvio server:  
   - Esegui `avvia_server.bat` nella stessa cartella per avviare il server locale.

---

#### MacOS
1. **Scaricare l’applicazione**  
   Scarica la cartella **MacOS Build.app** dalla sezione Releases ed estraila in una posizione a tua scelta.  

2. **Avvio del gioco**  
   Apri il terminale ed esegui:  
   ```bash
   chmod +x ~/tuo_percorso/MacOS\ Build.app/Contents/MacOS/SERGE
   ~/tuo_percorso/MacOS\ Build.app/Contents/MacOS/SERGE
