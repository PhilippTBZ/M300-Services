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
Mit der Infrastruktur stelt man die unterste Schicht im Cloud Computing dar. Hier greift der Benutzer auf die Dienste innerhalb des eigentlichen Systems. Es verwaltet die VMs weitestgehend selber.
#### Plattform - Platform as a Service (PaaS)
Der Entwickler erstellt die Anwendung und lädt diese in die Cloud. Der kümmert sich dann um die Aufteilungder Verarbeitungeinheiten. Hier hat der Benutzer einfach keinen direkten Zugriff auf die VMs. Sowie auch betriebt er die virtuellen Server nicht. 
#### Anwendung - Software as a Service (SaaS)
Die Anwendungssicht stellt die abstrakteste Sicht auf Cloud-Dienste dar. Hierbei bringt der Benutzer seine Applikation weder in die Cloud ein, noch muss er sich um Skalierbarkeit oder Datenhaltung kümmern. Er nutzt eine bestehende Applikation, die ihm die Cloud nach aussen hin anbietet.
#### Container - Container as a Service (CaaS)
Diese Ebene ist dafür zuständig, containerisierten Workload auf den Ressourcen auszuführen, die eine IaaS-Cloud zur Verfügung stellt. Die Technologien dieser Ebene wie Docker, Kubernetes oder Mesos sind allesamt quelloffen verfügbar. Somit kann man sich seine private Cloud ohne Gefahr eines Vendor Lock-ins aufbauen.
#### Infrastructure as Code
Infracstructure as Code (IaC) ist eine konsistene und wiederholbare Definition fpr die Bereitstellung von Systemen sowie auch deren Konfiguration.
Bei IaC gibt es verschiedene Best Practies:
1. Versionsverwaltung - Version Control Systems (VCS)
2. Testgetriebene Entwicklung - Testdriven Developmen (TDD)
3. Kontinuierliche Integration - Continuous Integration (CI)
4. Kontinuierliche Verteilung - Continuous Delivery (CD)

Die meiner Meinung nach wichtigesten Ziele von "IaC" sind:
*  IT-Infrastruktur wird unterstützt und ermöglicht Veränderung, anstatt Hindernis oder Einschränkung zu sein.
*  Fachanwender erstellen und verwalten ihre IT-Ressourcen, die sie benötigen, ohne IT-Mitarbeiter
*  Teams sind in der Lage, einfach und schnell, ein abgestürztes System wiederherzustellen.
*  Verbesserungen sind kontinuierlich und keine teuren und riskanten "Big Bang" Projekte.

### Vagrant
Die wichtigsten Befehle von Vagrant sind:

Befehl | Beschreibung
-------- | ----------
vagrant init | Initialisiert im aktuellen Verzeichnis eine Vagrant-Umgebung und erstellt, falls nicht vorhanden, ein Vagrantfile
vagrant up | Erzeugt und Konfiguriert eine neue Virtuelle Maschine, basierend auf dem Vagrantfile
vagrant ssh | Baut eine SSH-Verbindung zur gewünschten VM auf
vagrant status | Zeigt den aktuellen Status der VM an
vagrant port | Zeigt die Weitergeleiteten Ports der VM an
vagrant halt | Stoppt die laufende Virtuelle Maschine
vagrant destroy | Stoppt die Virtuelle Maschine und zerstört sie.
