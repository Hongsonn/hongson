# Hướng dẫn reset pass trong windows 

### I. Change pass sử dụng usb boot

1. Sử dụng file iso.
- Ta sẽ tạo 1 usb boot từ file iso để sử dụng.
- Sau khi tạo usb, ta tiến hành cho server boot tới usb vừa tạo

- Trong giao diện đầu tiên, ấn Next.

![a](https://f4-zpcloud.zdn.vn/7220881580517961595/ca60901bca64073a5e75.jpg)

4. Chọn `Repair your computer` để tiếp tục

5. chọn Troubleshoot, mục Advanced Options chọn Command Prompt để mở cửa sổ dòng lệnh.

![a](https://f4-zpcloud.zdn.vn/952366299089360061/c3d6eceab7957acb2384.jpg)

![a](https://f5-zpcloud.zdn.vn/3540394786720756474/23ec8dd9d1a61cf845b7.jpg)

- Cửa sổ cmd hiện ra:

![a](https://f4-zpcloud.zdn.vn/5936568552179839138/4085693c3443f91da052.jpg)

6. Tại cửa sổ. Gõ lần lượt các lệnh

```
c:
cd windows\system32
ren Utilman.exe Utilman.exe.old
copy cmd.exe Utilman.exe
```

![a](https://f5-zpcloud.zdn.vn/1976335911076518743/9a0f65daf4a539fb60b4.jpg)

7. Tắt cửa sổ, chọn continue

![a](https://f5-zpcloud.zdn.vn/3970345531299934794/55d8ee4c7833b56dec22.jpg)

8. Chờ server khởi động thành công. Ấn tổ hợp phím `Windows + U` để mở cửa sổ Command Prompt. Sau đó sử dụng lệnh: 
`net user administrator dc@123`

dc@123 là mật khẩu mới của tài khoản adminstrator

![a](https://f5-zpcloud.zdn.vn/3928386580035988417/8053ddda5aa597fbceb4.jpg)

9. Đăng nhập thành công.

![a](https://f5-zpcloud.zdn.vn/1100543350775590077/74fa21349d4b5015095a.jpg)


### II. Change pass sử dụng tool:

1. Sử dụng tool để reset pass:
- Ta có thể sử dụng cho mình các phần mềm cứu hộ như win PE: tạo USB BOOT - WINPE

![](../img/winpe.png)

- Ta có thể chọn cho mình 1 trong các bộ phần mềm ở phía trên, với rất nhiều các tính năng hỗ trợ, ở phần này ta chỉ làm về việc reset pass.

- Ở ví dụ này, sử dụng `Anhdv Boot 2022 Free`:
- Ta sẽ tải bản iso của Anhdv Boot 2022 sau đó tạo usb boot

![](../img/anhdv.png)

- Tiến hành boot từ usb

![](../img/boot.png)

- Sau khi boot vào ta được giao diện dưới đây và các tool sử dụng để reset pass:

![](../img/pass.png)

- Dưới đây sẽ sử dụng `Active@ Password`

![](../img/active%20pass.png)

- Tiếp đó tool sẽ truy cập đến file SAM (nơi chứa cơ sở dữ liệu trong hệ điều hành windows có chứa tên người dùng và mật khẩu)

![](../img/SAM.png)

- Các user trên hệ thống sẽ được liệt kê ra. và ta sẽ chọn user cần đổi pass

![](../img/user.png)

- Sau đó ta chọn `Apply` để đổi pass và sẽ có 1 cảnh báo được đưa ra => `Yes`

![](../img/change%20pass.png)

- Thao tác thành công 

![](../img/done.png)

- Khởi động lại server ta sẽ login được với user đã chọn mà không cần pass.

![](../img/dones.png)


### III. Change pass bằng cách sử dụng kvm ( đối với server vật lý)




