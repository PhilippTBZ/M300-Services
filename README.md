# M300-Services
Cross-platform services in a network
======
## Linux
Linux ist ein Kernel, welcher für andere Betriebssysteme zur Verfügung gestellt wird. Man kann aber auch selber diesen Kernel erweitern und verbessern, da Linux Open-Source ist.

Da man bei Linux eigentlich immer in der Kosole arbeitet, ist es gut wenn man die wichtigesten Befehle auswendig kennt.

* ch --> Wechselt in ein Unterverzeichnis
* touch --> Zugriffs-/Änderungs-Timestamp von Datein ändern
* mkdir --> Erstellt ein Verzeichnis
* chown --> Owner wechseln
* chgroup --> Gruppe wechseln
* chmod --> Berechtigungen wechseln
* nano/vi/vim "Filename" --> Datei öffnen zum bearbeiten

## Virtualisierung
### Virtuelle Maschine
Eine VM (virtuelle Maschine) kann man eigentlich von jedem Betriebssystem des Hosts laufen lassen,
sei es Windows, Linux oder Mac-OS. Das Erstellen eines anderen Betriebssystems, wie zum Beispiel
eine Linux VM, auf einem Windows Host funktioniert genau gleich wie, wenn es das gleiche
Betriebssystem ist, man braucht einfach eine andere ISO-Datei. Ob es aber empfehlenswert ist auf
einem „schlechten“ Computer VMs laufen zu lassen ist die andere Frage. Da man die CPU und das
RAM des Hosts verwendet, wenn zu wenig beim Host hat, kann es zu Standbildern / Verzögerungen
kommen, da die Hardware dann zu stark ausgelastet ist.

### Hypervisor
Der Hypervisor ist eine Schnittstelle zwischen der virtuellen Maschine und dem Host Computer mit
dem darunter liegenden Hardwarekomponenten. Bei den Hypervisoren wird unter zwei Typen
unterschieden.

#### Hypervisor Typ 1
Da der Typ-1 sehr nah an der Hardware läuft braucht man kein umfangreiches Betriebssystem auf
dem dieser betrieben wird. Die meisten Komponenten werden beim Typ-1 in der VM selber
ausgeführt und benötigt darum wenig Ressourcen für die eigene Ausführung. Da man mit diesem Typ
sehr schnell arbeiten kann, wird dieser meistens bei Server-Virtualisierung verwendet. Bei dieser
Lösung hat es Nachteile. Einer sind die besonderen Hardwareanforderungen. Sowie auch wird nicht
jeder Treiber von der Bare-Metal-Lösung unterstützt. 

#### Hypervisor Typ 2
Beim Typ-2 braucht man ein Basis-Betriebssystem, dies braucht man beim Typ-1 nicht. Theoretisch
kann man diese Lösung beschreiben wie ein Programm, welches in das Betriebssystem installiert &
ausgeführt wird, daher wird es „Hosted Lösung“ genannt. Der Typ-2 Hypervisor kann somit auf vielen
gängigen Betriebssystemen installiert und genutzt werden, da dieser keine spezielle Hardware
benötigt und Inkompatibilitäten hierbei sehr selten Auftreten. Der Nachteil bei dieser Lösung ist, der
höhere Ressourcenverbrauch. Für die Hardwareschnittstellen werden Emulationen zur Verfügung
gestellt. Dies bedeutet, dass man Hardware wie GPU oder Netzwerkkarten nicht physisch vorliegen
muss. Die bekanntesten Produkte in der Virtualisierung mit Typ-2 sind „VM Ware“ und „Virtual Box“. 

## Vagrant
Vagrant ist ein Programm, mit welchem man effizient virtuelle Maschinen aufsetzen kann. Diese lassen sich anhand eines Vagrantfiles starten. In diesem File kann man auch direkt alle Konfigurationsschritte eingeben, welche dann beim Start der virtuellen Maschine gemacht werden. 

Die wichtigen Befehle für Vagrant sind die folgenden:
* `vagrant init` --> erstellt eine VM
* `vagrant up` --> startet die VM
* `vagrant status` --> zeigt den Status der VM an
* `vagrant ssh` --> Verbindet sich per SSH mit der VM
* `vagrant destroy -f` --> löscht die VM
* `vagrant halt` --> stoppt die VM

## Git
Git ist ein Programm, welches von Linus Torvalds entwickelt wurde. Durch dieses Programm, ermöglicht es Benutzer gleichzeitig Dateien zu bearbeiten ohne Probleme und ohne das überschreiben von anderen.

Durch Git ergeben sich für die Benutzer folgende Möglichkeiten auf der Repository:
* Integration der eigenen Arbeit
* Arbeiten gehen nicht verloren / überschrieben
* Jeder kann gleichzeitig Arbeiten

## Markdown
Markdown ist eine Aufzeichnungssprache, welche 2004 entwickelt wurde. Das Ziel von Markdown ist es ein Format zu haben, welches in jedem Editor geschrieben und gelesen werden kann. Diese Dokumentation wird mit Hilfe von Markdown und Visual Studio Code geschrieben.

## Setup Toolumgebung (10-Toolumgebung)
Für Upload auf Github:
* `git commit -a -m "Update 18.05"`
* `git push`
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

### Packer
Packer ist eine Tool, welches man benutzen kann für die Erstellung von Images mittels einer Konfigurationdatei. Packer wird über die Kommandozeile bedient, bei dem der wichtigste Befehl `packer build` ist. 