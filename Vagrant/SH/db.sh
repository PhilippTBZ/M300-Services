sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password dbpw'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password dbpw'

sudo apt-get install -y mysql-server

sudo sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

mysql -uroot -pdbpw <<%EOF%
	CREATE USER 'root'@'192.168.55.55' IDENTIFIED BY 'webpw';
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.55.55';
	FLUSH PRIVILEGES;
%EOF%

sudo service mysql restart