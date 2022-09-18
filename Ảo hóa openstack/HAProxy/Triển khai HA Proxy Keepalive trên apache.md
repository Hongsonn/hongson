### Triển khai dịch vụ HA Proxy sử dụng keepalived để tăng tính sẵn sàng cho dịch vụ cân bằng tải

#### I. Chuẩn bị:

![a](https://f7-zpcloud.zdn.vn/6381282968876595732/8df278fe23dfe781bece.jpg)

- Mô hình triển khai

![a](https://f6-zpcloud.zdn.vn/2586232007661372173/4bf1a03e291fed41b40e.jpg)

- Mô hình hoạt động:

![a](https://f5-zpcloud.zdn.vn/8736146964245786753/f52661a8de891ad74398.jpg)

#### II. Cấu hình apache

**Node 1**
```
cat /etc/httpd/conf/httpd.conf | grep 'Listen 80'
sed -i "s/Listen 80/Listen 172.16.4.10:8081/g" /etc/httpd/conf/httpd.conf

echo '<h1>Chào mừng tới ABC (Web1)</h1>' > /var/www/html/index.html

setenforce 0
systemctl start httpd
systemctl enable httpd
```

**Node 2**
```
cat /etc/httpd/conf/httpd.conf | grep 'Listen 80'
sed -i "s/Listen 80/Listen 172.16.4.11:8081/g" /etc/httpd/conf/httpd.conf

echo '<h1>Chào mừng tới ABC (Web2)</h1>' > /var/www/html/index.html

setenforce 0
systemctl start httpd
systemctl enable httpd
```

**Node 3**
```
cat /etc/httpd/conf/httpd.conf | grep 'Listen 80'
sed -i "s/Listen 80/Listen 172.16.4.12:8081/g" /etc/httpd/conf/httpd.conf

echo '<h1>Chào mừng tới ABC (Web3)</h1>' > /var/www/html/index.html

setenforce 0
systemctl start httpd
systemctl enable httpd
```

#### III. Cài đặt Keepalive

- Cài đặt trên cả 3 node `yum -y install keepalived`
- Cấu hình trên các node taij file: `/etc/keepalived/keepalived.conf`

**Node 1**
```
vrrp_script chk_haproxy {
    script "killall -0 haproxy" # check the haproxy process
    interval 2 # every 2 seconds
    weight 2 # add 2 points if OK
}
vrrp_instance VI_1 {
    interface eth0
    state MASTER
    virtual_router_id 51
    priority 101
    virtual_ipaddress {
        172.16.4.100/20
    }
    track_script {
        chk_haproxy
    }
}
```

**Node 2**
```
vrrp_script chk_haproxy {
    script "killall -0 haproxy" # check the haproxy process
    interval 2 # every 2 seconds
    weight 2 # add 2 points if OK
}
vrrp_instance VI_1 {
    interface eth0
    state BACKUP
    virtual_router_id 51
    priority 100
    virtual_ipaddress {
        172.16.4.100/20
    }
    track_script {
        chk_haproxy
    }
}
```

**Node 3**
```
vrrp_script chk_haproxy {
    script "killall -0 haproxy" # check the haproxy process
    interval 2 # every 2 seconds
    weight 2 # add 2 points if OK
}
vrrp_instance VI_1 {
    interface eth0
    state BACKUP
    virtual_router_id 51
    priority 99
    virtual_ipaddress {
        172.16.4.100/20
    }
    track_script {
        chk_haproxy
    }
}
```

- Khởi động lại dịch vụ trên 3 node: `systemctl start keepalived`

#### IV. Cài đặt Haproxy

- Thực hiện trên tất cả các node

```
sudo yum install wget socat -y
wget http://cbs.centos.org/kojifiles/packages/haproxy/1.8.1/5.el7/x86_64/haproxy18-1.8.1-5.el7.x86_64.rpm 
yum install haproxy18-1.8.1-5.el7.x86_64.rpm -y
```

- Sao chép file cấu hình: `cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bk`
- Chỉnh sửa file: `haproxy.cfg`:

```
global
    log         127.0.0.1 local2
    chroot      /var/lib/haproxy
    pidfile     /var/run/haproxy.pid
    maxconn     4000
    user        haproxy
    group       haproxy
    daemon
    stats socket /var/lib/haproxy/stats

defaults
    mode                    http
    maxconn                 8000
    log                     global
    option                  httplog
    option                  dontlognull
    option http-server-close
    retries                 3
    timeout http-request    20s
    timeout queue           1m
    timeout connect         10s
    timeout client          1m
    timeout server          1m
    timeout http-keep-alive 10s
    timeout check           10s

listen stats
    bind *:8080 interface eth0
    mode http
    stats enable
    stats uri /stats
    stats realm HAProxy\ Statistics
    stats admin if TRUE

listen web-backend
    bind *:80
    balance  roundrobin
    cookie SERVERID insert indirect nocache
    mode  http
    option  httpchk
    option  httpclose
    option  httplog
    option  forwardfor
    server node1 10.10.10.10:8081 check cookie node1 inter 5s fastinter 2s rise 3 fall 3
    server node2 10.10.11.11:8081 check cookie node2 inter 5s fastinter 2s rise 3 fall 3
    server node3 10.10.11.12:8081 check cookie node3 inter 5s fastinter 2s rise 3 fall 3
```

- Cấu hình log HAProxy:

```
sed -i "s/#\$ModLoad imudp/\$ModLoad imudp/g" /etc/rsyslog.conf                     // bỏ "#" ModLoad imudp trong file rsyslog.conf
sed -i "s/#\$UDPServerRun 514/\$UDPServerRun 514/g" /etc/rsyslog.conf
echo '$UDPServerAddress 127.0.0.1' >> /etc/rsyslog.conf

echo 'local2.*    /var/log/haproxy.log' > /etc/rsyslog.d/haproxy.conf
systemctl restart rsyslog
```

- Bổ sung cấu hình cho phép kernel có thể binding với IP VIP

```
echo 'net.ipv4.ip_nonlocal_bind = 1' >> /etc/sysctl.conf
```

- Kiểm tra:
```
[root@node1 rsyslog.d]# sysctl -p
net.ipv4.ip_nonlocal_bind = 1
```

- Khởi tạo dịch vụ HAProxy

```
systemctl restart haproxy
systemctl enable haproxy
```


