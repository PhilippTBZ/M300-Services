# M300-Services
Cross-platform services in a network
======
## Linux
Linux ist ein Kernel, welcher für andere Betriebssysteme zur Verfügung gestellt wird. Man kann aber auch selber diesen Kernel erweitern und verbessern, da Linux Open-Source ist.

Da man bei Linux eigentlich immer in der Kosole arbeitet, ist es gut wenn man die wichtigesten Befehle auswendig kennt.

* cd --> Wechselt in ein Unterverzeichnis
* touch --> Zugriffs-/Änderungs-Timestamp von Datein ändern
* mkdir --> Erstellt ein Verzeichnis
* chown --> Owner wechseln
* chgroup --> Gruppe wechseln
* chmod --> Berechtigungen wechseln
* nano/vi/vim "Filename" --> Datei öffnen zum bearbeiten
* tail -10f --> letzte 10 Einträge im File & fortlaufend

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

## Wissensstand
Ich kenne mich in Linux meiner Meinung nach eigentlich ziemlich gut aus, da ich seit 1 Jahr im Betrieb sogut wie nur mit Linux arbeite. Die Standard Linux Befehle sollten daher keine Schwierigkeit ergeben, und sonst gibt es immer noch Google. Ich arbeite aber in diesem Modul zum eigentlich ersten Mal mit VirtualBox, sonst habe ich immer mit VMWare gearbeitet. Wir hatten in der UBS ein ÜK bei dem wir kurz eine VM aus VMWare in VirtualBox kopiert haben, einfach zum schauen/überprüfen das dies möglich ist. Sonst habe ich aber lieber VMWare benutzt, da es für mich einfacher ist. Ich habe mich bis jetzt auch noch nicht mit Github wirklich auseinander gesetzt und eine eigene Repository erstellt. Daher kannte ich auch Markdown nicht. Hört sich aber ziemlich interessant an, da man mit jedem Editor in dieser "Sprache" schreiben und interagieren kann.

## Reflexion
Ich bin eigentlich sehr zufrienden mit dem Modul, auch wenn ich nicht alles auf anhieb verstanden habe, oder gemacht habe. Da mir eifach die Zeit gefehlt hat. Die einzigen Probleme hatte ich eigentlich mit Vagrant, da ich dieses Programm nicht wirklich verstanden habe. Ich brauchte zuerst noch ein bisschen Hilfe von Kollegen und dem Internet. Jedoch hoffe ich, dass ich trotzdem eine gute Note bekommen kann, oder wenigstens jetzt die Grundlagen für LB3 habe. Zudem muss ich auch sagen bin ich ein bisschen froh, wenn dieses Modul um ist, da ich nicht wirklich der Fan von Vagrant bin. Es ist ja schön, dass es eine solche Möglichkeit gibt, aber ich kenne von meiner Stelle nur so viel, dass man die Server nicht immer wieder neu aufsetzen muss. Was noch dazu kommt ist, dass wir in der UBS eigene Commands haben, welche wir brauchen um einen Server aufzusetzen wenn das mal der Fall ist. Und ich weiss nicht ob dies möglich ist, auch diese Custom Commands dort einzugeben, oder ob Vagrant dann ein Problem damit hat.

## Setup Toolumgebung (10-Toolumgebung)

### Github
1. Repository erstellen auf Github
2. `git clone` von der Repository
3. `git config --global user.name "PhilippTBZ"`
4. `git config --global user.email "philipp.hofmann@edu.tbz.ch"`

Für einen Upload auf Github:
* `git commit -a -m "Text"`
* `git push`

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

### Sicherheitsaspekte
In der folgenden Tabelle kann man die eingerichteten Rules der Firewall sehen kann.

Source/Destionation | Hostsystem | WAN | Database | Webserver
-------- | -------- | -------- | -------- | -------- | --------
Hostsystem | x | any | 22/TCP | 22/TCP
WAN | - | x | - | - 
Database | - | any | x | -
Webserver | - | any | - | x

### Zugang mit SSH-Tunnel
Nein, es SSH-Tunnel ist nicht eingerichtet. Da SSH nur von Hostsystem bis auf die VM erlaubt ist, wurden die Firewall Rules erstellt. 

### Sicherheitsmassnahmen
* UFW ist Standard auf Deny gestellt.
* Nur gebrauchte Ports sind geöffnet

