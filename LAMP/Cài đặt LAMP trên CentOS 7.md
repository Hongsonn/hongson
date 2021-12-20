# Tiến hành cài đặt:
### 1. Cài đặt CentOS7
- Cài đặt phiên bản giao diện

![centos7](https://f4-zpcloud.zdn.vn/1177573763075210790/61665be18aed40b319fc.jpg)

### 2. Cài đặt Apache
- Để cài đặt ta sử dụng lệnh: `sudo yum -y install httpd`

![httpd](https://f5-zpcloud.zdn.vn/5495310860724540005/fbd5b8495945931bca54.jpg)

- Tiến hành khởi động dịch vụ: 

```
systemctl start httpd       //Bắt đầu dịch vụ
systemctl enable httpd      // Cho phép dịch vụ khởi động cùng hệ thống.
```

![start](https://f5-zpcloud.zdn.vn/1799528889096531078/5914445c5853920dcb42.jpg)

- Xem trạng thái hoạt động của service: 
```
systemctl status httpd
```

![status](https://f5-zpcloud.zdn.vn/817012340418610468/c613becbafc4659a3cd5.jpg)

- Kiểm tra trên browser:

![browser](https://f5-zpcloud.zdn.vn/53994889927504946/b4871b4b1044da1a8355.jpg)

- Tắt firewall để truy cập trên máy thật nếu đang sử hệ điều hành trên máy ảo
```
systemctl stop firewalld
```
![firewall](https://f5-zpcloud.zdn.vn/2797547204311801106/5ac0f9e6fee934b76df8.jpg)

### 3. Cài đặt hệ quản lý cơ sở dữ liệu
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

### 4.Cài đặt php
- Phiên bản có sẵn trong repo của CentOS đang là 5.4. Phiên bản này khá cũ và sẽ khiến bạn gặp một số vấn đề xảy ra khi tiến hành cài đặt wordpress. Vì vậy bạn cần phải cài đặt phiên bản 7x để khắc phục. Bạn cần tiến hành thêm kho vào Remi CentOS:

```
rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
```

![remi](https://f4-zpcloud.zdn.vn/6787514247619640398/49889590069fccc1958e.jpg)

- Cài yum-utils vì chúng ta cần tiện ích yum-config-manager để cài đặt:

```
yum -y install yum-utils
```

![utils](https://f5-zpcloud.zdn.vn/567812688833175507/60bfb4c63dc9f797aed8.jpg)

- Để kiểm tra xem MariaDB đã cài đặt thành công chưa, chúng ta thử kết nối vào MariaDB bằng lệnh mysql với tài khoản root.

```
mysql -u root -p
```

![sql](https://f5-zpcloud.zdn.vn/5755175234886163492/e51932830d8dc7d39e9c.jpg)

- Tiến hành cài đặt php. Ở đây cần lưu ý về phiên bản cài đặt như sau:
  - Bản 7.0  
```
  yum-config-manager --enable remi-php70
  yum -y install php php-opcache php-mysql
```
  - Bản 7.1 
```
yum-config-manager --enable remi-php71
yum -y install php php-opcache php-mysql
```
  - Bản 7.2
```
yum-config-manager --enable remi-php72
yum -y install php php-opcache php-mysql
```
 - Bản 7.3
```
yum-config-manager --enable remi-php73
yum -y install php php-opcache php-mysql
```

- Ở đây, sử dụng bản 7.3

![7.3](https://f5-zpcloud.zdn.vn/4220448074533994230/edc0ec5db853720d2b42.jpg)

![php](https://f5-zpcloud.zdn.vn/4304814768689334708/65e28012d01c1a42430d.jpg)
![php](https://f4-zpcloud.zdn.vn/8896558580528564807/6b109d8cd0821adc4393.jpg)


- Để kiểm tra PHP đã được cài đặt thành công chưa chúng ta tạo 1 file index.php ở thư mục /var/www/html có nội dung như sau:

```
echo "<?php phpinfo();?>" > /var/www/html/index.php
```

- Sau khi cài đặt xong, thực hiện restart lại apache:

```
systemctl restart httpd
```

- Kiểm tra trên trình duyệt:

![browser](https://f5-zpcloud.zdn.vn/3656906045373812494/8dfbd556a4586e063749.jpg)

