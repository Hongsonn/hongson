# Cài đặt Wordpress trên CentOS7
### 1. Wordpress
WordPress là một hệ quản trị nội dung mã nguồn mở miễn phí viết bằng ngôn ngữ lập trình PHP đi cùng với cơ sở dữ liệu MySQL hoặc MariaDB. Thành phần chính bao gồm một kiến trúc plugin và một hệ thống template. Được phát hành vào năm 2003, đến nay WordPress đã trở thành một trong những hệ thống quản lí website phổ biến nhất thế giới với hơn 60 triệu website (số liệu năm 2019).

![wordpress](https://cdn.tgdd.vn/hoi-dap/1344992/wordpress-la-gi-uu-nhuoc-diem-tai-sao-nen-dung-de-thiet-ke.jpg)

### 2. Cài đặt
1. **Bước 1. Chuẩn bị**
Ta cần có một bộ LAMP trên máy. Có thể tham khảo tại [đây](https://news.cloud365.vn/huong-dan-cai-dat-lamp-tren-centos-7/)

2. **Bước 2: Tạo cơ sở dữ liệu và tài khoản cho WP**
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

- Tạo database cho WP. Ở đây có tên là `dbwptest`

```
MariaDB [(none)]> CREATE DATABASE dbwptest;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| dbwptest           |
| mysql              |
| performance_schema |
+--------------------+
4 rows in set (0.01 sec)

MariaDB [(none)]> 
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


3. **Tải và cài đặt WordPress**
- Cài gói hỗ trợ `php-gd`:
`yum -y install php-gd`
- Tải xuống WordPress phiên bản mới nhất: Nếu chưa cài đặt `wget` thì có thể cài bằng câu lệnh `# yum install wget`.

```
[root@localhost ~]# wget https://wordpress.org/latest.tar.gz
```

![WP](https://f4-zpcloud.zdn.vn/1380808355234491015/d8fd64290f20c57e9c31.jpg)

![WP](https://f5-zpcloud.zdn.vn/4616831341997928102/743e8408e4012e5f7710.jpg)

**Lưu ý**: cần để ý tới thư mục đang lưu trữ file wordpress đang được tải xuống. Ở đây lưu tại thư mục /root.

![gz](https://f5-zpcloud.zdn.vn/4537770733474149543/53b994001309d9578018.jpg)

- Ta sẽ giải nén file `latest.tar.gz`:
```
[root@localhost ~]# tar -xvf latest.tar.gz
```
- Sau khi giải nén ra ta được:

![tar](https://f4-zpcloud.zdn.vn/8022382629050195955/e59be44152489816c159.jpg)

- Copy các file trong thư mục WordPress tới đường dẫn `/var/www/html`

`cp -Rvf /root/wordpress/* /var/www/html`

4. **Cấu hình WordPress**
- File cấu hình wordpress là `wp-config.php`. Tuy nhiên tại đây chỉ có file `wp-config-sample.php`. Tiến hành copy lại file cấu hình như sau:

![cp](https://f5-zpcloud.zdn.vn/2114671109012266233/db73b1f71ffcd5a28ced.jpg)

- Mở file `wp-config.php` chỉnh sửa bằng `vi`:

![vi](https://f4-zpcloud.zdn.vn/621530692100249154/48b870efc3e409ba50f5.jpg)

Chỉnh lại tên database, username, password đã đặt trước đó. (db_name: dbwptest, username: admin, pass: admin) và lưu lại.

5. Hoàn tất cài đặt giao diện
- Kiểm tra trên trình duyệt:

![gd](https://f5-zpcloud.zdn.vn/7114899393313751206/64134d9a929158cf0180.jpg)
 
- Nhập các thông tin cần thiết rồi Install WordPress.

![wp](https://f5-zpcloud.zdn.vn/7559145298254099791/4b2bf141094ac3149a5b.jpg)

- Tiến hành đăng nhập và vào giao diện WP:

![wp](https://f4-zpcloud.zdn.vn/2737500009353918834/f29c0c17fd1c37426e0d.jpg)



