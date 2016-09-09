# !/bin/bash
# MAINTEINER: David Palomar

echo " Mysql Starting"
echo ""

docker run --name mysql -e MYSQL_ROOT_PASSWORD=admin -d -p 3306:3306 mysql/mysql-server   || docker start mysql

echo "MySql started in "  $(docker inspect --format='{{.NetworkSettings.IPAddress}}' mysql) ":3306" 

echo ""
echo "You can close this terminal, MySQL continues running in background".

/bin/bash