# M300-Services
Cross-platform services in a network
======
## Setup Toolumgebung (10-Toolumgebung)
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

### Vagrant
Da die Steps mit VirtualBox un einer VM sehr lange dauern können. Vorallem das installieren von Ubuntu, gibt es Abhilfe. Diese heisst Vagrant. Es ist eine freie Ruby-Anwendung zur Erstellung und Verwaltung virtueller Maschinen und ermöglicht einfache Softwareverteiling.

Vagrant kann auf der offiziellen Webseite heruntergeladen werden. (https://vagrantup.com)

Sobald man Vagrant installiert hat, kann man in einen Ordner gehen und in diesem die folgenden Commands mit Hilfe vom Bash ausführen:
1. `vagrant init ubuntu/xenial64` --> *Vagrant file erzeugen*
2. `vagrant up --provider virtualbox` --> *Virtuelle Maschine erstellen & starten*

Danach kann man entweder die VM benutzten durch VirtualBox oder man kann via SSH auf die Maschine verbinden. Dies kann man mit dem Befehl `vagrant ssh` machen (solangen man in dem Ordner der VM ist). Da man dann verbunden ist mit der VM, kann man auch ganz normal die Bash-Befehle benutzen.

## Infrastruktur (20-Infrastruktur)
### Cloud Computing
#### Infrastruktur - Infrastructure as a Service (IaaS)
#### Plattform - Platform as a Service (PaaS)
#### Anwendung - Software as a Service (SaaS)
#### Container - Container as a Service (CaaS)