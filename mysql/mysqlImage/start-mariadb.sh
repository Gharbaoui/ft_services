/etc/init.d/mariadb setup
service mariadb start
mysql -e "CREATE USER 'mohamed'@'%' IDENTIFIED BY '1234';"
mysql -e "CREATE DATABASE mohamed_db;"
mysql < ./mohamed_db.sql -u root mohamed_db; 
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mohamed'@'%';"
mysql -e "FLUSH PRIVILEGES"
mysql -e "./mohamed_db.sql -u mohamed"
service mariadb restart
echo "mariadb started"
tail -f /dev/null
#sh
