## I. Installing Foreman with Katello

- Đồng bộ time
- Tắt selinux
- Sửa hostname:
cat /etc/hosts
#127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
#::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
172.16.9.39 foreman.son.lab

https://theforeman.org/plugins/katello/

```
[root@foreman ~]# rpm -q foreman
foreman-3.13.0-1.el9.noarch
```

https://docs.theforeman.org/3.13/Quickstart/index-katello.html

- Clear any metadata
dnf clean all

Install the foreman-release.rpm package:
dnf install https://yum.theforeman.org/releases/3.13/el9/x86_64/foreman-release.rpm

Install the katello-repos-latest.rpm package
dnf install https://yum.theforeman.org/katello/4.15/katello/el9/x86_64/katello-repos-latest.rpm -y

Install the puppet-release package
- For Puppet 8:
        dnf install https://yum.puppet.com/puppet8-release-el-9.noarch.rpm

Verify that the required repositories are enabled:
dnf repolist enabled

![alt text](image-9.png)

Installing Foreman server packages
Update all packages:
dnf upgrade

Install foreman-installer-katello
dnf install foreman-installer-katello -y

Running the Foreman installer
foreman-installer --scenario katello

![alt text](image-10.png)

```
  Success!
  * Foreman is running at https://foreman.son.lab
      Initial credentials are admin / QCDNpaWrDjp3omF6
  * To install an additional Foreman proxy on separate machine continue by running:

      foreman-proxy-certs-generate --foreman-proxy-fqdn "$FOREMAN_PROXY" --certs-tar "/root/$FOREMAN_PROXY-certs.tar.gz"
  * Foreman Proxy is running at https://foreman.son.lab:9090

The full log is at /var/log/foreman-installer/katello.log
```

-------------------

### I. Foreman sử dụng Smart Proxy để quản lý các dịch vụ như DHCP, DNS, và TFTP
1. File cấu hình Smart Proxy nằm tại: /etc/foreman-proxy/settings.yml
Đảm bảo cá dòng sau được bật
```
:http_port: 8000
:https_port: 9090
:bind_host: '192.168.68.39'  # Chỉ định Smart Proxy lắng nghe trên ens9
```

![alt text](image-6.png)

- Cấu hình module tại: `/etc/foreman-proxy/settings.d/`

1. DHCP: `/etc/foreman-proxy/settings.d/dhcp.yml`

![alt text](image-7.png)

```
:enabled: true
:use_provider: dhcp_isc
:server: 192.168.68.39
:subnets: ['192.168.68.0/24']
```

2. DNS: `/etc/foreman-proxy/settings.d/dns.yml`

![alt text](image-8.png)

```
:enabled: true
:use_provider: dns_nsupdate
:dns_server: 192.168.68.39
```

3. TFTP: `/etc/foreman-proxy/settings.d/tftp.yml`

![alt text](image-11.png)

```
:enabled: true
:tftproot: /var/lib/tftpboot
:tftp_servername: 192.168.68.39
```

4. Chạy lại foreman install để áp dụng với các dịch vụ mới:

```
foreman-installer --scenario katello \
                  --foreman-proxy-dhcp true \
                  --foreman-proxy-dhcp-managed true \
                  --foreman-proxy-dhcp-interface ens9 \
                  --foreman-proxy-dhcp-range "192.168.68.100 192.168.68.200" \
                  --foreman-proxy-dhcp-gateway "192.168.68.1" \
                  --foreman-proxy-dhcp-nameservers "192.168.68.39" \
                  --foreman-proxy-dns true \
                  --foreman-proxy-dns-managed true \
                  --foreman-proxy-dns-interface ens9 \
                  --foreman-proxy-dns-zone son.lab \
                  --foreman-proxy-dns-reverse 68.168.192.in-addr.arpa \
                  --foreman-proxy-tftp true \
                  --foreman-proxy-tftp-managed true
```

- `--foreman-proxy-dhcp-range`: Dải IP DHCP cấp phát (ví dụ: 192.168.68.100 - 192.168.68.200)
- `--foreman-proxy-dhcp-gateway`: IP của gateway trong mạng (thay đổi nếu khác 192.168.68.1)
- `--foreman-proxy-dhcp-nameservers`: DNS server
- `--foreman-proxy-dns-zone`: Tên miền
- `--foreman-proxy-dns-reverse`: Reverse DNS zone cho subnet

![alt text](image-12.png)

- kiểm tra trạng thái Smart Proxy: `systemctl status foreman-proxy`
`systemctl restart dhcpd`
`systemctl status tftp`
`systemctl enable --now tftp`

`chmod -R 755 /var/lib/tftpboot`

### II. Trên giao diện foreman

1. Content > Products > Create Products

![alt text](image-13.png)

![alt text](image-14.png)

- New Repository

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)

![alt text](image-18.png)

- Các mục tiếp theo giữ nguyên, mục `Download Policy` có 2 tùy chọn: 
    - One Demand: có thể hiểu là tải từ các kho lưu trữ trên Internet để sử dụng khi có yêu cầu
    - Immediate: Tải về server, sẽ có dung lượng lớn, nên chọn tùy chọn này đối với các phiên bản os cũ

![alt text](image-19.png)

![alt text](image-20.png)

![alt text](image-21.png)

- Đợi chạy xong là được

![alt text](image-22.png)

2. Create Operating Systems

![alt text](image-23.png)

![alt text](image-24.png)

![alt text](image-25.png)

![alt text](image-26.png)

![alt text](image-27.png)

=> Submit

![alt text](image-28.png)

3. Creat Subnet

![alt text](image-29.png)

![alt text](image-30.png)

![alt text](image-32.png)

![alt text](image-31.png)

![alt text](image-33.png)

- Kiểm tra các dịch vụ trước khi cài OS

![alt text](image-43.png)

![alt text](image-34.png)

4. Khởi tạo host 

![alt text](image-35.png)

![alt text](image-36.png)

![alt text](image-37.png)

- Điền các thông tin, xác định địa chỉ MAC. Ở ví dụn này sử dụng vm trên KVM

![alt text](image-38.png)

![alt text](image-39.png)

![alt text](image-40.png)

![alt text](image-41.png)

![alt text](image-42.png)

=> Submit

![alt text](image-44.png)

![alt text](image-45.png)

![alt text](image-46.png)

- Có thể xem log cài đặt `/var/log/foreman-proxy/proxy.log`

Quá trình cài đặt đang diễn ra
![alt text](image-47.png)

`ls -lh /var/lib/tftpboot/boot/`
![alt text](image-48.png)

![alt text](image-49.png)

![alt text](image-50.png)

![alt text](image-51.png)

- Trên server vật lý thực hiện tương tự.
- Lấy MAC interface:

![alt text](image-59.png)

![alt text](image-60.png)

![alt text](image-61.png)

### IV. Console
1. Sử dụng Foreman Web Console (Built-in Terminal)
Foreman hỗ trợ tích hợp console qua giao diện web bằng plugin foreman_remote_execution hoặc foreman_console

- Thêm Puppet Repository
```
dnf install -y https://yum.puppet.com/puppet7-release-el-9.noarch.rpm
dnf clean all
dnf makecache
dnf install -y puppet-agent
```

2. Cấu hình Puppet để kết nối với Foreman
Sau khi cài đặt puppet-agent, cần cấu hình để host sv01 kết nối với Foreman server (foreman.son.lab) làm Puppet Master

- Trên foreman server cài : 
```
dnf install -y puppetserver
foreman-installer --scenario katello --enable-foreman-plugin-puppet
systemctl enable --now puppetserver                 # dùng port 8140
```

![alt text](image-54.png)

- Kiểm tra Puppetca: nếu chưa được bật hãy sửa thành `true`

![alt text](image-53.png)

- Chạy lại foreman-installer để kích hoạt Puppet

```
foreman-installer --scenario katello \
                  --enable-foreman-plugin-puppet \
                  --foreman-proxy-puppet true \
                  --foreman-proxy-puppetca true
```

![alt text](image-55.png)

- Trên host `sv01`: `/opt/puppetlabs/bin/puppet agent --test --server foreman.son.lab`

![alt text](image-52.png)

- Kiểm tra Infrastructure > Smart Proxies > foreman.son.lab

![alt text](image-56.png)

![alt text](image-57.png)

- Trên host `sv01` chạy lại: `/opt/puppetlabs/bin/puppet agent --test --server foreman.son.lab`

![alt text](image-58.png)

