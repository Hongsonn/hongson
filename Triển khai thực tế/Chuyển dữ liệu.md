# Chuyển dữ liệu


### I. Các thông tin cần có

  - Ví dụ:
1. 
Fwook.com (45.252.1.2)
http://45.252.1.1:2082
Username : fwook
Password : rGT};p2-

2. Thông tin quản trị Direct Admin

Địa chỉ: http://  103.176.1.1 :2222
Username: admin
Password: X7ynQhEJvZ

3. Lưu ý:

- Mỗi domain tạo 1 user khác nhau 
- Khi add user nhập mail của khách


### II. Tiến hành chuyển dữ liệu

1. Truy cập Host cần chuyển dữ liệu

- Truy cập vào mục "Domain":

![a](https://f5-zpcloud.zdn.vn/6948527195784067640/8757f25a1088ddd68499.jpg)

  - Truy cập vào `/public_html` để lấy source code

![a](https://f4-zpcloud.zdn.vn/2572926619622511995/18a0f5f31021dd7f8430.jpg)

  - Tích "Select All" và nén file lại. Sau đó tải file nén xuống

![a](https://f5-zpcloud.zdn.vn/1290025640375418713/d24180bb6769aa37f378.jpg)

- Truy cập vào `phpMyAdmin` để lấy database

![a](https://f5-zpcloud.zdn.vn/9186972991670747614/31059b2c86f14baf12e0.jpg)

  - Chọn database sau đó tải xuống:

![a](https://f5-zpcloud.zdn.vn/2340453534045337308/54585c574d8a80d4d99b.jpg)

  - DB tải xuống có dạng 

![a](https://f5-zpcloud.zdn.vn/1864538033972451558/79068a2faef263ac3ae3.jpg)

- Truy cập DA tạo user mới :

![a](https://f5-zpcloud.zdn.vn/7632666772657867487/cb9e5a045ad99787cec8.jpg)

  - Nhập các thông tin tạo tài khoản:

![a](https://f4-zpcloud.zdn.vn/6832163479827128421/c17879857d58b006e949.jpg)

  - Truy cập List user:

![a](https://f5-zpcloud.zdn.vn/8474168183275616368/33aba46b9cb651e808a7.jpg)

  - Login với tài khoản user vừa tạo

![a](https://f5-zpcloud.zdn.vn/7527314102875626422/396fd6f2ec2f2171783e.jpg)

- Truy cập MySQL Management

![a](https://f5-zpcloud.zdn.vn/3074743852734886245/92b59fc5a1186c463509.jpg)

  - Tạo database mới 

![a](https://f5-zpcloud.zdn.vn/2683631011519774193/ccee516f6fb2a2ecfba3.jpg)

  - Nhập các thông tin để tạo DB:

![a](https://f5-zpcloud.zdn.vn/2011331268855011515/d2fc0a2235fff8a1a1ee.jpg)

  - Truy cập phpMyAdmin với DB vừa tạo và import file DB bên host cũ

![a](https://f5-zpcloud.zdn.vn/4417964799770759697/a908ca5482894fd71698.jpg)

- Quay lại giao diện chính DA truy cập file:

![a](https://f5-zpcloud.zdn.vn/1991109899013490770/8df8e84fa3926ecc3783.jpg)

  - TRuy cập `Public_html` và giải nén file source code từ bên host cũ

![a](https://f4-zpcloud.zdn.vn/6714621798955012360/7a3906a94a74872ade65.jpg)

![a](https://f5-zpcloud.zdn.vn/5437343625750891164/0ae5f5cdb410794e2001.jpg)

- Chỉnh sửa file `Wp-cònig.php`

![a](https://f5-zpcloud.zdn.vn/7864824418164954220/25c22f266cfba1a5f8ea.jpg)

  - Chỉnh sửa DB_name, DB_user, DB_password, ứng với DB vừa tạo trước đó. Sau đó 

![a](https://f5-zpcloud.zdn.vn/4603440451012107140/a722723035edf8b3a1fc.jpg)

- Chỉnh sửa file hots: `C:\Windows\System32\drivers\etc` sau đó lưu lại. Để kiểm tra trang web đã hoạt động chưa.

![a](https://f5-zpcloud.zdn.vn/5365845761131073375/b4a928d67b09b657ef18.jpg)

 - Kiểm tra đã thành công

- SAu khi đã kiểm tra và thấy web chưa có chứng chỉ ssl

  - Ta truy cập vào `SSL/TLS` để mượn chứng chỉ 

![a](https://f5-zpcloud.zdn.vn/4602928410599485237/364e7b7d2ca2e1fcb8b3.jpg)

  - Truy cập `Manage SSL sites

![a](https://f4-zpcloud.zdn.vn/8679171885525450252/d2bbffa4b67b7b25226a.jpg)

![a](https://f5-zpcloud.zdn.vn/244294215177116977/f5af323f78e0b5beecf1.jpg)

![a](https://f5-zpcloud.zdn.vn/1810129936020689975/8153cc64b4bb79e520aa.jpg)

- Quay lại truy cập DA với tài khoản user

![a](https://f4-zpcloud.zdn.vn/1227130288639490839/1021351c76c3bb9de2d2.jpg)

  - TRuy cập `SSL Certificates`

![a](https://f5-zpcloud.zdn.vn/7215134852349086187/679fb83ffbe036be6ff1.jpg)

  - Thêm CRT và Key vào mục `Paste a pre-generated certificate and key`

![a](https://f4-zpcloud.zdn.vn/4269233546256133410/e1cfe707a3d86e8637c9.jpg)

  - Để thêm chứng chỉ CA

![a](https://f4-zpcloud.zdn.vn/8274608961108570496/6befc48bbf54720a2b45.jpg)

  - Tích vào mục `Use a CA Cert`

![a](https://f4-zpcloud.zdn.vn/42674404349777662/20e720755caa91f4c8bb.jpg)

  - Tích vào mục `Force SSL with https redirect` 

![a](https://f6-zpcloud.zdn.vn/7033487245079483505/b48ca940d79f1ac1438e.jpg)

- Sau đó kiểm tra lại trang web


