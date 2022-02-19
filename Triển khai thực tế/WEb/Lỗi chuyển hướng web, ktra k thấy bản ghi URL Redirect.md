Kiểm tra DB của khách => Truy cập vào db_option=> Kiểm tra `siteurl, home` xem đã đúng với tên trang web chưa.

- TRường hợp 2. nhập tên miền không tự chuyển hướng https:
Truy cập: `/home/nhtharn3/public_html/.htaccess`

Thêm dòng: 

```
RewriteCond %{HTTPS} !=on [NC]
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [R=301,L]
```

![a](https://f6-zpcloud.zdn.vn/2938243397966395529/4e1450dffc0630586917.jpg)