==============FIX Can't connect to local MySQL server through socket '/usr/local/mysql/data/mysql.sock' (111)=====
mysql -h localhost
mysql -h 127.0.0.1

mysql -u  mysql

/usr/local/mysql/support-files/mysql.server start

systemctl status mysqld.service

mysql -h 127.0.0.1 -P 3306 -u root -p dataname

root@ctr682813:~# mysql -h localhost
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/usr/local/mysql/data/mysql.sock' (111)
root@ctr682813:~# mysql -h 127.0.0.1
ERROR 2002 (HY000): Can't connect to MySQL server on '127.0.0.1' (115)
root@ctr682813:~# mysql_config --socket

------------------
sudo vi /etc/my.cnf
[mysqld]
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock
------------