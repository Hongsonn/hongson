# Cài đặt ubuntu server 18

1. **Chuẩn bị**
- 1 Usb boot
- Có ít nhất 2G lưu trữ 

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

![a](https://f5-zpcloud.zdn.vn/6361147872392780076/0b896a802992e4ccbd83.jpg)

![a](https://f5-zpcloud.zdn.vn/8317620870918316705/81147c810493c9cd9082.jpg)

- Ta điền thông tin cá nhân, tên use và mật khẩu, sau đó chọn Done.

![a](https://f5-zpcloud.zdn.vn/791726559121535563/a48666b61da4d0fa89b5.jpg)

- tích vào ô Install OpenSSH server để cài OpenSSH, sau đó chọn Done.

![a](https://f4-zpcloud.zdn.vn/2039690054201125100/fe398ebcf2ae3ff066bf.jpg)

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

- Sau đó lưu tệp lại và áp dụng các thay đổi: `netplan apply`

### II. Truy cập bằng ssh

- Kiểm tra xem ssh hiện có đang chạy không: `systemctl status ssh`

![a](https://f5-zpcloud.zdn.vn/1270197244856673629/4bc603dc8ace47901edf.jpg)

- Kiểm tra tường lửa và mở cổn ssh bằng lệnh ufw:

```
ufw status
ufw allow ssh
```

- Để đăng nhập được ssh dưới quyền **root**
  - Ta cần chỉnh sửa file `vi /etc/ssh/sshd_config`

![a](https://f5-zpcloud.zdn.vn/6216297175284361074/ac4299646776aa28f367.jpg)

  - Ta thêm dòng `PermitRootLogin yes`

![a](https://f4-zpcloud.zdn.vn/2117181870754349785/6999b69d498f84d1dd9e.jpg)

  - Sau đó, ta sẽ restart lại dịch vụ ssh

```
service ssh restart
```


