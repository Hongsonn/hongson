1. Check update và upgrade ubuntu22

```
sudo apt update
sudo apt upgrade
```

2. Kiểm tra CPU có hỗ trợ cài đặ ảo hóa không

```
egrep -c '(vmx|svm)' /proc/cpuinfo          # Nếu kết quả trả về khác 0 là hỗ trợ
```

3. Cài đặt các gói phụ trợ để cài đặt KVM

```
sudo apt install qemu-kvm libvirt-daemon-system virtinst libvirt-clients bridge-utils
```

4. Bật service phục vụ cho ảo hóa và xem status

```
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd
```

![alt text](/Ảo%20hóa%20-a/KVM/img/image.png)

5. Thêm Users vào KVM và Libvirt Group

```
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER
```

6. Tạo Bridge network cho máy ảo

`vi /etc/netplan/00-installer-config.yaml`

```
# This is the network config written by 'subiquity'
network:
  ethernets:
    eno1:
      dhcp4: true
    eno2:
      dhcp4: no
      addresses: []
      nameservers: {}
    eno3:
      dhcp4: true
    eno4:
      dhcp4: true
  version: 2
  bridges:
    br0:
      interfaces: [eno2]
      dhcp4: no
      addresses: [172.16.7.11/20]
      gateway4: 172.16.10.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]
```

- Áp dụng cấu hình: `netplan apply`

![alt text](/Ảo%20hóa%20-a/KVM/img/image-1.png)

7. Cài đặt `apt install virt-manager` cung cấp giao diện để quản lý máy ảo bằng đồ họa

```
virt-manager
```

![alt text](/Ảo%20hóa%20-a/KVM/img/image-2.png)

8. Cài đặt máy ảo:

- Cài đặt máy ảo centos 7 làm theo các bước sau:

![alt text](/Ảo%20hóa%20-a/KVM/img/image-3.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-4.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-5.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-6.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-7.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-8.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-9.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-10.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-11.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-12.png)

![alt text](/Ảo%20hóa%20-a/KVM/img/image-14.png)








