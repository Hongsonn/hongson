### I. Cài đặt Nginx và PHP trên CentOS 7
1. Thêm repo cần thiết: `yum install epel-release`
- CentOS 7 Remi repository: `rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm`
- CentOS 7 Nginx repository: `rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm`

2. Cài đặt Nginx, PHP
- PHP 7.3:

```
yum-config-manager --enable remi-php73
yum -y install php php-opcache php-mysql
```

3. Start Nginx và PHP-FPM
- Start Nginx: `systemctl start nginx.service`
- Start PHP-FPM: `systemctl start php-fpm.service`

4. Tự động khởi động Nginx, PHP-FPM:
- Autostart Nginx: `systemctl enable nginx.service`
- Autostart PHP-FPM: `systemctl enable php-fpm.service`

5. Cấu hình Nginx và PHP-FPM
- Cấu hình nginx virtual hosts: `vi /etc/nginx/conf.d/default.conf`

```
 1 server {
  2     listen       80;
  3     server_name  son.com;
  4 
  5     access_log  /usr/share/nginx/son.com/logs/access.log;
  6     error_log /usr/share/nginx/son.com/logs/error.log;
  7 
  8     location / {
  9         root   /usr/share/nginx/son.com;
 10         index  index.php index.html index.htm;
 11         try_files $uri $uri/ /index.php?q=$uri&$args;
 12     }
 13 
 14     #error_page  404              /404.html;
 15 
 16     # redirect server error pages to the static page /50x.html
 17     #
 18     error_page   500 502 503 504  /50x.html;
 19     location = /50x.html {
 20         root   /usr/share/nginx/html;
 21     }
 22 
 23     # proxy the PHP scripts to Apache listening on 127.0.0.1:80
 24     #
 25     #location ~ \.php$ {
 26     #    proxy_pass   http://127.0.0.1;
 27     #}
 28 
 29     # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
 30     #
 31     location ~ \.php$ {
 32         root           /usr/share/nginx/html;
 33         fastcgi_pass   127.0.0.1:9000;
```

- Restart Nginx: `systemctl restart nginx.service`

- **Cấu hình PHP-FPM**
  - Chỉnh user và group: `vi /etc/php-fpm.d/www.conf`
  - Thay user và group = apache sang nginx

  ![a](https://f5-zpcloud.zdn.vn/5173000396120531247/faed94410e70c42e9d61.jpg)

  - Restart PHP-FPM: `systemctl restart php-fpm.service`

6. Test cấu hình Nginx và PHP-FPM
- Chỉnh sửa file: `vi /usr/share/nginx/html/info.php` và thêm vào:

```
<?php
phpinfo();
?>
```
- Truy cập vào browser và kiểm tra:

![a](https://f4-zpcloud.zdn.vn/4451863307747368442/e16b11859eb454ea0da5.jpg)

### II. Cài đặt MariaDB trên CentOS 7

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