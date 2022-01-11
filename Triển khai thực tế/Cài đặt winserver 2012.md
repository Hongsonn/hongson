# I. Cài đặt win server 2012

1. Truy cập vào usb boot và bắt đầu cài đặt:
2. Sau khi các file được nạp, tiến tới màn hình, chọn ngôn ngữ, bàn phím, thời gian

![a](https://f5-zpcloud.zdn.vn/9040950738836885390/c37ca281bdfd70a329ec.jpg)

3. Nhấn vào Install Now.

![a](https://f5-zpcloud.zdn.vn/7267092417656022477/c39f8bc294be59e000af.jpg)

4. Chờ đợi quá trình cài đặt, sau đó nhập key để activate Windows

![a](https://f5-zpcloud.zdn.vn/5442816004776231452/bdd032103a6cf732ae7d.jpg)

5. Chờ đến khi hiện ra màn hình dưới đây, bạn chọn Windows Server 2012 Standard (Server with GUI) để dùng Windows Server với giao diện đồ họa và nhấn Next.

![a](https://f4-zpcloud.zdn.vn/2030675978906607914/f4c210ed1891d5cf8c80.jpg)

6. Nhấn vào I accept the license terms và nhấn Next.

![a](https://f5-zpcloud.zdn.vn/170863365424085998/f2e9619568e9a5b7fcf8.jpg)

7. Với lần đầu cài đặt OS hoặc muốn cài đặt Windows Server 2012 mới hoàn toàn, chọn option thứ 2 Custom: Install Windows only (advanced).

![a](https://f5-zpcloud.zdn.vn/7597835584847446862/c3fd2a092075ed2bb464.jpg)

8. chọn phân vùng để cài đặt Windows Server 2012. Sau đó nhấn Next.

![a](https://f5-zpcloud.zdn.vn/2684114886305711963/d72140b3d5cf189141de.jpg)

9. Chờ quá trình cài đặt hoàn tất và server sẽ khởi động lại

![a](https://f5-zpcloud.zdn.vn/3723241699698618561/640ccc40593c9462cd2d.jpg)

10. Sau khi khởi động lại, màn hình dưới đây sẽ xuất hiện. đặt mật khẩu cho server và nhấn vào Finish.

![a](https://f5-zpcloud.zdn.vn/8354025325915567940/a99b9c022c7ee120b86f.jpg)

11. Sau khi cài đặt, ta tiến hành đăng nhập với tài khoản admin

![a](https://f4-zpcloud.zdn.vn/4571691826544039707/46b2a7541628db768239.jpg)

12. Màn hình sau khi đăng nhập thành công 

![a](https://f5-zpcloud.zdn.vn/1326768407771615228/b9391b96aeea63b43afb.jpg)

# II. Cài lại mật khẩu adminstrator 

1. Chuẩn bị USB như đã sử dụng ở phần trên. Tiến hành khởi động lại server

2. Sau khi vào lại server truy cập vào usb boot

3. Trong giao diện đầu tiên, ấn Next.

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

