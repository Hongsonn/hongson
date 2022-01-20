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

![a](https://f6-zpcloud.zdn.vn/4641816332489315648/7d20ff4f989655c80c87.jpg)

  - Truy cập List user:

![a](https://f5-zpcloud.zdn.vn/8474168183275616368/33aba46b9cb651e808a7.jpg)

  - Login với tài khoản user vừa tạo

![a](https://f6-zpcloud.zdn.vn/2845295316959491548/3677e1b17a68b736ee79.jpg)

- Truy cập MySQL Management

![a](https://f6-zpcloud.zdn.vn/2562903934834487376/4326f83668efa5b1fcfe.jpg)

  - Tạo database mới 

![a](https://f6-zpcloud.zdn.vn/1599831181098432727/c3032ff4a22d6f73363c.jpg)

  - Nhập các thông tin để tạo DB:

![a](https://f6-zpcloud.zdn.vn/7318305047287486669/2b0e7a1bf3c23e9c67d3.jpg)

  - Truy cập phpMyAdmin với DB vừa tạo và import file DB bên host cũ

![a](https://f4-zpcloud.zdn.vn/8185971815175733884/05fc7a27fbfe36a06fef.jpg)

- Quay lại giao diện chính DA truy cập file:

![a](https://f6-zpcloud.zdn.vn/6246489300408113763/527e3224b6fd7ba322ec.jpg)

  - TRuy cập `Public_html` và giải nén file source code từ bên host cũ

![a](https://f4-zpcloud.zdn.vn/6714621798955012360/7a3906a94a74872ade65.jpg)

![a](https://f5-zpcloud.zdn.vn/5437343625750891164/0ae5f5cdb410794e2001.jpg)

- Chỉnh sửa file `Wp-cònig.php`

![a](https://f5-zpcloud.zdn.vn/7864824418164954220/25c22f266cfba1a5f8ea.jpg)

  - Chỉnh sửa DB_name, DB_user, DB_password, ứng với DB vừa tạo trước đó. Sau đó 

![a](https://f6-zpcloud.zdn.vn/2000947895121976497/44bdf6774eae83f0dabf.jpg)

- Chỉnh sửa file hots: `C:\Windows\System32\drivers\etc` sau đó lưu lại. Để kiểm tra trang web đã hoạt động chưa.

![a](https://f5-zpcloud.zdn.vn/5365845761131073375/b4a928d67b09b657ef18.jpg)

 - Kiểm tra đã thành công

- SAu khi đã kiểm tra và thấy web chưa có chứng chỉ ssl

  - Ta truy cập vào `SSL/TLS` để mượn chứng chỉ 

![a](https://f5-zpcloud.zdn.vn/4602928410599485237/364e7b7d2ca2e1fcb8b3.jpg)

  - Truy cập `Manage SSL sites

![a](https://f4-zpcloud.zdn.vn/8679171885525450252/d2bbffa4b67b7b25226a.jpg)

![a](https://f4-zpcloud.zdn.vn/5074139534621371705/fa75433afee333bd6af2.jpg)

![a](https://f5-zpcloud.zdn.vn/7604808865193032171/6178076db7b47aea23a5.jpg)

- Quay lại truy cập DA với tài khoản user

![a](https://f4-zpcloud.zdn.vn/2946541168649829217/89a628b49a6d57330e7c.jpg)

  - TRuy cập `SSL Certificates`

![a](https://f6-zpcloud.zdn.vn/7611475117603225912/e88da1b4156dd833817c.jpg)

  - Thêm CRT và Key vào mục `Paste a pre-generated certificate and key`

![a](https://f5-zpcloud.zdn.vn/7529256671425557706/4e0ceff3592a9474cd3b.jpg)

  - Để thêm chứng chỉ CA

![a](https://f4-zpcloud.zdn.vn/572049154009698719/dcbc93203bf9f6a7afe8.jpg)

  - Tích vào mục `Use a CA Cert`

![a](https://f6-zpcloud.zdn.vn/4125762896311425200/5e9a3c1596cc5b9202dd.jpg)

  - Tích vào mục `Force SSL with https redirect` 

![a](https://f5-zpcloud.zdn.vn/3482541547998333972/752b55c1f81835466c09.jpg)

- Sau đó kiểm tra lại trang web


