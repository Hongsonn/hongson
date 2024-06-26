# Cài đặt ubuntu server 20

1. **Chuẩn bị**
- 1 Usb boot

2. **Quá trình cài đặt**

- Truy cập Usb boot để tiến hành cài đặt

![a](https://f5-zpcloud.zdn.vn/8904641252933688613/4097bc70b96674382d77.jpg)

- Sau đó, sẽ tiến vào quá trình khởi động: với màn hình đầu tiên là lựa chọn ngôn ngữ:

![a](https://f5-zpcloud.zdn.vn/3920863633621604285/d6eb69b224a0e9feb0b1.jpg)

- Lựa chọn bàn phím :

![a](https://f5-zpcloud.zdn.vn/239535197194395124/015058ec17fedaa083ef.jpg)

- Kết nối mạng:

![a](https://f5-zpcloud.zdn.vn/5977009087528845936/5856d8409952540c0d43.jpg)

- Cài đặt proxy. Bạn chọn done để nhận proxy theo mặc định.

![a](https://f5-zpcloud.zdn.vn/7427372333160616912/e8cf933ed12c1c72453d.jpg)

- Chọn phân vùng của hệ điều hành

![a](https://f5-zpcloud.zdn.vn/5466306223438931207/c241464ec47f0921506e.jpg)


- Ta điền thông tin cá nhân, tên use và mật khẩu, sau đó chọn Done.

![a](https://f5-zpcloud.zdn.vn/3866023941489440249/68ec95ce25ffe8a1b1ee.jpg)

- Tích vào ô Install OpenSSH server để cài OpenSSH, sau đó chọn Done.

![a](https://f5-zpcloud.zdn.vn/4904975688491388268/0e86346c855d4803114c.jpg)

- Cài đặt thêm một số gói mở rộng. Nếu không cần thì chọn done để tiếp tục.

![a](https://f4-zpcloud.zdn.vn/3228787235407056398/e6cb435c3e4ef310aa5f.jpg)

- Đợi khoảng thời gian cho hệ thống cài đặt:

![a](https://f5-zpcloud.zdn.vn/4462226462377097544/216cea4c975e5a00034f.jpg)

- Sau khi cài đặt xong, chọn **Reboot now**

![a](https://f4-zpcloud.zdn.vn/1731166500867579602/7cb269fa04e8c9b690f9.jpg)


### I. Cài đặt ip tĩnh

- Xác định card mạng đang được sử dụng, và tiến hành chỉnh sửa file:

```
vi /etc/netplan/00-installer-config.yaml
```

- Tiến hành sửa file lại như sau:

![a](https://f4-zpcloud.zdn.vn/3459672418446660673/ada57a35b52c7872213d.jpg)

- Sau đó lưu tệp lại và áp dụng các thay đổi: `# netplan apply`

### II. Truy cập bằng ssh

- Kiểm tra tường lửa và mở cổn ssh bằng lệnh ufw:

```
ufw status
ufw allow ssh
```

- Để đăng nhập được ssh dưới quyền **root**
  - Ta cần chỉnh sửa file `vi /etc/ssh/sshd_config`

![a](https://f5-zpcloud.zdn.vn/6216297175284361074/ac4299646776aa28f367.jpg)

  - Ta thêm dòng `PermitRootLogin yes`

![a](https://f5-zpcloud.zdn.vn/7734485907080429510/3ab3972c2f13e24dbb02.jpg)

![alt text](image.png)

  - Sau đó, ta sẽ restart lại dịch vụ ssh

```
service ssh restart
```

### III. Xóa snap 

Tham khảo link https://discuss.getsol.us/d/4821-correctly-remove-the-dev-loop0-squashfs-created-by-snap/9
```
sudo snap list --all
umount /dev/loop0
snap remove loop0
```

### IV. Xóa người dùng

Tham khảo: https://www.cyberciti.biz/faq/delete-a-user-account-on-ubuntu-linux/

```
sudo deluser --remove-home username

id username  // để kiểm tra xem người dùng có tồn tại

```

# Ubutu 22:

```
# This is the network config written by 'subiquity'
network:
  ethernets:
    eno1:
      dhcp4: no
      addresses:
        - a.b.c.d/xy
      gateway4: a.b.c.e
      nameservers:
        addresses:
          - 8.8.8.8
          - 8.8.4.4
    eno2:
      dhcp4: true
    eno3:
      dhcp4: true
    eno4:
      dhcp4: true
  version: 2

```

![a](https://f8-zpcloud.zdn.vn/3281866082208179565/1c4144ec226df933a07c.jpg)

# RESET PASSWORD

- Ấn phím `shift` sau khi reboot server để vào menu GRUB 
- Sau đó ấn phím `e`:

![alt text](/Triển%20khai%20thực%20tế/OS/imgs/image.png)

- Tìm xuống dòng `ro  quiet splash $vt_handoff`

![alt text](/Triển%20khai%20thực%20tế/OS/imgs/image-1.png)

- Sửa thành `rw init=/bin/bash`

![alt text](/Triển%20khai%20thực%20tế/OS/imgs/image-2.png)

- Ấn Ctr + X hoặc F10
- Có quyền truy cập vào Root shell mà không cần mật khẩu

![alt text](/Triển%20khai%20thực%20tế/OS/imgs/image-3.png)

- Thực hiện lần lượt:

```
mount | grep -w /                       Đảm bảo với quyền truy cập phân vùng khởi động với user root và quyền đọc, ghi
/dev/sda2 on type ext4 (rw,realtime)

passw root                              Thay đổi pass root
exec /sbin/init                         Reboot
```
