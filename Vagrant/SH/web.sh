  sudo apt-get update
  sudo apt-get -y install apache2

  sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password webpw'
  sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password webpw'

  sudo apt-get -y install php libapache2-mod-php php-curl php-cli php-mysql php-gd mysql-client

  sudo mkdir /usr/share/adminer
  sudo wget "https://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
  sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php

  echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
  sudo a2enconf adminer.conf
  sudo service apache2 restart

  sudo apt-get install ufw
  sudo ufw --force enable
  sudo ufw allow 22/tcp
  sudo ufw allow out 22/tcp
  sudo ufw allow 80/tcp