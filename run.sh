
docker run --name mysql --hostname mysql -p 3306:3306 --network mynetwork \
 -e MYSQL_USER=abdelali -e MYSQL_PASSWORD=abdelali -e MYSQL_ROOT_PASSWORD=abdelali  -d mysql-app

docker run --name phpadmin --hostname phpadmin -p 8080:80 --network mynetwork \
 -e PMA_HOST=mysql  -e PMA_PORT=3306 -e PMA_ARBITRARY=1 -d phpmyadmin 

docker run --name flask --hostname flask -p 5000:5000 --network mynetwork -e MYSQL_HOST=mysql\
 -e MYSQL_USER=abdelali -e MYSQL_PASSWORD=abdelali -e MYSQL_DB=abdelali -d flask-app 


docker run --name nginx --hostname nginx -p 80:80 --network mynetwork -d nginx-app
