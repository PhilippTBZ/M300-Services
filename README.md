# M300-Services
Cross-platform services in a network
======
## Setup
### Github
1. Repository erstellen auf Github
2. `git clone` von der Repository
3. `git config --global user.name "PhilippTBZ"`
4. `git config --global user.email "philipp.hofmann@edu.tbz.ch"`

### VM
#### Erstellung der VM
 1. Downloaden der neusten Ubuntu ISO (https://ubuntu.com/#download)
 2. VM erstellen mit den folgenden Einstellungen:
      - ISO: `ubuntu-20.04-desktop-amd64.iso`
      - Name: `M300_Ubuntu_20.04_Desktop`
      - Speicher: `10GB`
      - RAM: `2048MB`
3. Starten der VM

#### Setup der VM
1. Ubuntu installieren
2. Benutzer erstellen
3. Region und Tastatur-Layout definieren
4. Installieren der neusten Updates / Upgrade
5. Reboot der VM
6. Installieren von synaptic (`sudo apt-get install synaptic`)
7. Synaptic Package Manager starten und nach "Apache" suchen
8. Apache mit allen Abhängigkeiten installieren
9. Reboot der VM
10. Apache testen im Web (http://127.0.0.1:80)
11. VM herunterfahren, wenn alles funktioniert hat.
