# Cài đặt Centos7

### I. Chuẩn bị:
- 1 Server đã được khởi động
- 1 chiếc usb boot
- Màn hình, bàn phím

1. Đối với từng loại server ta ấn phím tương ứng để tiến hành vào **system setup** (Dell - F2)
2. Tiến hành bật cấu hình iDRAC:
- Truy cập vào Network: để cấu hình IP
- Truy cập Use config: Chọn tùy chọn Enable:
  - root và đặt mật khẩu
  - Các tùy chọn: LAN use privilege, serial port user privilege: Administrator
- Nếu lỗi có thể sử dụng tùy chọn **Restart iDRAC** để tiến hành cấu hình lại

3. **System BIOS**
- Xem thông tin: Infor]
- Memmory set
- Procest: CPU infor
- SATA: mode SATA
- Boot seting: chọn sử dụng BIOS, tiếp đó với mục Boot sequence đẩy tùy chọn hard drive lên đầu.
- Hard-disk drive: đẩy tùy chọn RAID lên trước
- Đồng bộ thời gian 

4. Cài RAID
- Sử dụng tổ hợp ctr + R
- Clear raid 
- Tạo raid với số lượng disk và yêu cầu thích hợp
- ví dụ:
  Tạo RAiD 0:
  - Tích vào tùy chọn RAID 0 và chọn disk tương ứng, sau đó nhập tên, bấm phím F2 chọn tùy chọn Fast finish để hoàn tất việc tạo raid

### II. Cài đặt centos7

Sau khi thực hiện xong các bước ở trên, ta tiến hành khởi động lại server. (ctr + alt + del)

- Sau khi được khởi dộng lại, ta chọn vào usb đã chuẩn bị để tiến hành cài đặt:
- Lựa chọn: **Install centOS 7**

![a](https://f5-zpcloud.zdn.vn/6342865407254536354/5af7bf7836c5fc9ba5d4.jpg)
 
- Lựa chọn ngôn ngữ:

![a](https://f5-zpcloud.zdn.vn/2706111150353358746/66714c72c8cf02915bde.jpg)

- Cài đặt 
  - Thời gian tại **Date & time**
  - Bàn phím: **Keyboard**
  - Software
  - System: Installation destination, netwwork & hostname, KDUMP, Security Polycy

![a](https://f5-zpcloud.zdn.vn/6534676662245234794/44541723a49e6ec0378f.jpg)

![a](https://f4-zpcloud.zdn.vn/7083912932388374575/e9d9900b22b6e8e8b1a7.jpg)

- System: **Installation destination**, lựa chọn  đĩa cứng và tích **I will configure Partitioning** 

![a](https://f5-zpcloud.zdn.vn/5044785252567738907/47726d43c5fe0fa056ef.jpg)

- Phân vùng đĩa cứng thủ công , Chọn LVM trong Partitioning Scheme

![a](https://f5-zpcloud.zdn.vn/6583026833495938911/886861b1c50c0f52561d.jpg)

- Tạo phân vùng (/boot) bằng cách click vào dấu (+), nhập vào dung lượng Click **Add Mount Point**

![a](https://f5-zpcloud.zdn.vn/1421017036052080081/4f7a5fa981144b4a1205.jpg)

- Tạo phân vùng (/swap)

![a](https://f5-zpcloud.zdn.vn/718178088885897700/91be23f3f94e33106a5f.jpg)

- Phần bộ nhớ còn lại chia cho các phân vùng khác:

![a](https://f5-zpcloud.zdn.vn/6344854961605436515/54b0b3b3600eaa50f31f.jpg)

- Chọn **ext4** cho phân vùng (/boot) trong Sytem 

![a](https://f5-zpcloud.zdn.vn/836697277298393273/62f8a9d7606aaa34f37b.jpg)

- Chọn **ext4** cho phân vùng (/) trong Sytem 

![a](https://f5-zpcloud.zdn.vn/3158274813049038369/c7c1111dd2a018fe41b1.jpg)

- Sau đó chọn **Done** và chọn **Accept Change**

![a](https://f5-zpcloud.zdn.vn/7230067106064080357/b5547fbe80034a5d1312.jpg)

- **Network & Host name**
Chọn **Enable** để bật kết nối

![a](https://f4-zpcloud.zdn.vn/3845904651191799899/f569f8bb0a06c0589917.jpg)

- Sau khi cấu hình xong, chọn **Begin Installtion**

![a](https://f5-zpcloud.zdn.vn/2791397824649735491/3bb3b2545de997b7cef8.jpg)

- Cài đặt mật khẩu cho **root** trong tùy chọn **root password**

![a](https://f4-zpcloud.zdn.vn/4997289249392119754/8aed5e82b53f7f61262e.jpg)

- Chọn **Reboot** để hoàn thành 

![a](https://f5-zpcloud.zdn.vn/1251757937844329448/e4c27f1054ac9ef2c7bd.jpg)

- Đăng nhập, kiểm tra địa chỉ ip đã cài và ổ địa đã cài

![a](https://f4-zpcloud.zdn.vn/6565263998380166927/de19cb32918e5bd0029f.jpg)

![a](https://f5-zpcloud.zdn.vn/1765754726673964003/9713a11ef5a23ffc66b3.jpg)






