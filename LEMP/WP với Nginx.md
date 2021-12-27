### 1. Chuẩn bị:
- Đã có LEMP trước đó.

### 2. Cài đặt MariaDB
- Sử dụng mariadb, tiến hành cài đặt với lệnh:

```
sudo yum -y install mariadb mariadb-server
```

![mariadb](https://f5-zpcloud.zdn.vn/2918944385434042325/671e4baa76a5bcfbe5b4.jpg)

- Khởi động mariadb service:
```
systemctl start mariadb
```
![start](https://f4-zpcloud.zdn.vn/4028902228662875754/036fa206980952570b18.jpg)

- Cài lại mật khẩu cho quyền root của cơ sở dữ liệu:

```
sudo mysql_secure_installation
```

![mysql](https://f5-zpcloud.zdn.vn/784770654387219477/87da1a32433d8963d02c.jpg)

![mysql](https://f5-zpcloud.zdn.vn/5135869137900956958/03ad3a967999b3c7ea88.jpg)

1. Bước này yêu cầu bạn nhập mật khẩu gần đây cho root. Nếu  mới cài lần đầu thì nhấn Enter để bỏ qua.
2. Nếu  cài lần đầu, hệ thống sẽ hỏi  muốn cài password cho quyền root không. Bạn gõ Y -> Enter, sau đó nhập mật khẩu và xác thực mật khẩu.
3. Xoá bỏ các user khác.
4. Không cho phép root đăng nhập từ xa.
5. Xoá bỏ databases test.
6. Khởi chạy lại bảng Privilege (bảng phân quyền).

### 3. Tạo cơ sở dữ liệu và người dùng WP
- Đầu tiên chúng ta kết nối tới CSDL bằng user root

```
mysql -u root -p
```

- Tạo 1 database mới:

```
SQL> CREATE DATABASE <database_name> 
```

- Tạo 1 user mới và gán quyền cho database:

```
SQL> GRANT ALL PRIVILEGES ON `<database_name>`.* To `<username>`@`localhost` IDENTIFIED BY '<password>';
```

- Đăng nhập vào tài khoản root của database:

```
[root@localhost son]# mysql -u root -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 14
Server version: 5.5.68-MariaDB MariaDB Server

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> 
```

- Tạo database cho WP. Ở đây có tên là `test1`

```
MariaDB [(none)]> create database test1;
Query OK, 1 row affected (0.02 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| test               |
| test1              |
+--------------------+
5 rows in set (0.00 sec)

```

- Tạo tài khoản riêng để quản lý database. Tên tài khoản: admin, Mật khẩu: admin

```
MariaDB [(none)]> grant all privileges on dbwptest.*to admin@localhost identified by 'admin';
Query OK, 0 rows affected (0.01 sec)
```
- Sau đó xác thực lại những thay đổi về quyền:

```
MariaDB [(none)]> flush privileges;
Query OK, 0 rows affected (0.01 sec)
```

- Sau đó, thoát ra khỏi MariaDB

```
MariaDB [(none)]> exit
Bye
```

### 4. Tải và cài đặt WP
- Tải WP: `wget https://wordpress.org/latest.zip`
- Giải nén file: `unzip latest.zip && mv wordpress/* . && rm -rf wordpress`

 ![a](https://f4-zpcloud.zdn.vn/6624057564311531552/a04d2fdd57019d5fc410.jpg)

- Kết quả sau khi giải nén xong: 

![a](https://f4-zpcloud.zdn.vn/6624057564311531552/a04d2fdd57019d5fc410.jpg)

- Kiểm tra trên trình duyệt: 

![a](https://f5-zpcloud.zdn.vn/8228299591195214966/dd8976b50469ce379778.jpg)

- Điền thông tin: 

![a](https://f5-zpcloud.zdn.vn/8067855021123177477/ff5865a3e57f2f21766e.jpg)

- Tiến hành đăng nhập: 

![a](https://f4-zpcloud.zdn.vn/4192834961159993758/b03688b0376cfd32a47d.jpg)

- Giao diện dashboard:

![a](https://f4-zpcloud.zdn.vn/1929491479448438990/352333ce8e12444c1d03.jpg)