# Cài đặt Nginx trên Centos7
### 1. Cài đặt Nghix theo yum

- Truy cập vào đường dẫn repo:
`cd /etc/yum.repos.d/`
- Tạo file repo cho nginx: 

![a](https://f5-zpcloud.zdn.vn/8037624179487079513/90ca3f057c1bb645ef0a.jpg)

- Cài đặt nginx: `yum install nginx -y`

![a](https://f5-zpcloud.zdn.vn/5923513659993094723/435254ce2ad0e08eb9c1.jpg)

- Start service nginx: `service nginx start`

![a](https://f5-zpcloud.zdn.vn/4314714398587977169/4bdcffc982d7488911c6.jpg)

- Kiểm tra cài đặt: `nginx -t -c /etc/nginx/nginx.conf `

![a](https://f5-zpcloud.zdn.vn/6675264603047288820/853c12996887a2d9fb96.jpg)

- Truy cập bằng browser:

![a](https://f5-zpcloud.zdn.vn/7468949362245755819/a6c522f544eb8eb5d7fa.jpg)

### 2. Cài đặt ngix theo source

- Cài đặt các package cần thiết để biên dịch Nginx từ source:

```
yum groupinstall " Development Tools"  -y
yum install zlib-devel pcre-devel openssl-devel wget -y
yum install epel-release -y
```

![a](https://f5-zpcloud.zdn.vn/3253646033143371409/a56f00dc0dc5c79b9ed4.jpg)
![a](https://f5-zpcloud.zdn.vn/2508190439742128194/611657335b2a9174c83b.jpg)
![a](https://f5-zpcloud.zdn.vn/1594195732297553077/313cc0d7cbce019058df.jpg)

- Cài đặt thêm các thành phần phụ thuộc của Nginx:

```
yum install perl perl-devel perl-ExtUtils-Embed libxslt libxslt-devel libxml2 libxml2-devel gd gd-devel GeoIP GeoIP-devel -y
```

![a](https://f5-zpcloud.zdn.vn/8186616591622208556/a704008f0996c3c89a87.jpg)

- Tiến hành download source nginx tại trang https://nginx.org/download/. Trong bài viết này sử dụng source version nginx 1.19.0

```
[root@localhost ~]# cd /usr/src/
[root@localhost src]# wget https://nginx.org/download/nginx-1.19.0.tar.gz
```

![a](https://f5-zpcloud.zdn.vn/6316244474262900441/7d038493b18a7bd4229b.jpg)

- Giải nén: `tar -xzf nginx-1.15.0.tar.gz`
- Truy cập vào đường dẫn chứa source nginx vừa giải nén: `cd nginx-1.19.0/`
-Tiến hành config từ script
```
[root@localhost nginx-1.19.0]# ./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --error-log-path=/var/log/nginx/error.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --user=nginx --group=nginx
```
```
[root@localhost nginx-1.19.0]# make
```
```
[root@localhost nginx-1.19.0]# make install
```

- Tạo user và tiến hành phân quyền owner cho thư mục:

![a](https://f4-zpcloud.zdn.vn/4059178083423853355/b978b7eceaf520ab79e4.jpg)

- Tạo file để chạy lệnh mỗi khi stop hoặc start service nginx

```
[root@localhost nginx-1.19.0]# cat >> /usr/lib/systemd/system/nginx.service << "EOF"
> [Unit]
> Description=nginx -high performance web server
> Documentation=https://nginx.org/en/docs/
> After=network-online.target remote-fs.target nss-lookup.target
> Wants=network-online.target
> 
> [Service]
> Type=forking
> PIDFile=/var/run/nginx.pid
> ExecStartPre=/usr/sbin/nginx -t -c /etc/nginx/conf/nginx.conf
> ExecStart=/usr/sbin/nginx -c /etc/nginx/conf/nginx.conf
> ExecReload=/bin/kill -s HUP $MAINPID
> ExecStop=/bin/kill -s TERM $MAINPID
> 
> [Install]
> WantedBy=multi-user.target
> EOF
```

- Start Service nginx và cấu hình auto start service mỗi khi server reboot

```
[root@localhost nginx-1.19.0]# systemctl start nginx.service 
[root@localhost nginx-1.19.0]# systemctl enable nginx.service 
Created symlink from /etc/systemd/system/multi-user.target.wants/nginx.service to /usr/lib/systemd/system/nginx.service.
```

- Kiểm tra cài đặt:
```
[root@localhost nginx-1.19.0]# nginx -t -c /etc/nginx/conf/nginx.conf
nginx: the configuration file /etc/nginx/conf/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/conf/nginx.conf test is successful
```

![a](https://f4-zpcloud.zdn.vn/4996390478121625168/9029a9b3efaa25f47cbb.jpg)
