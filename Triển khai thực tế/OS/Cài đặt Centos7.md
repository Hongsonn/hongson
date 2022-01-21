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

![a](https://f5-zpcloud.zdn.vn/8142148017222921655/9d086639827f4f21166e.jpg)

![a](https://f4-zpcloud.zdn.vn/7083912932388374575/e9d9900b22b6e8e8b1a7.jpg)

- System: **Installation destination**, lựa chọn  đĩa cứng và tích **I will configure Partitioning** 

- Phân vùng đĩa cứng thủ công , Chọn LVM trong Partitioning Scheme


- Tạo phân vùng (/boot) bằng cách click vào dấu (+), nhập vào dung lượng Click **Add Mount Point**

![a](https://f5-zpcloud.zdn.vn/3054290806064873113/06beb6fca1bd6ce335ac.jpg)

- Tạo phân vùng (/swap)
  - Đối với server có cấu hình RAM thấp, thì sẽ cần dùng đến phân vùng Swap 
  - Swap thì thường được đặt gấp đôi với RAM vật lý

- Phần bộ nhớ còn lại chia cho các phân vùng khác:

- Chọn **ext4** cho phân vùng (/boot) trong Sytem 

![a](https://f5-zpcloud.zdn.vn/5532302619412319855/76b5deb0d5f118af41e0.jpg)

- Chọn **ext4** cho phân vùng (/) trong Sytem 

![a](https://f5-zpcloud.zdn.vn/806154357697113249/1516d7d4da9517cb4e84.jpg)

- Sau đó chọn **Done** và chọn **Accept Change**

![a](https://f5-zpcloud.zdn.vn/5834660697418947114/d5d62d602221ef7fb630.jpg)

- **Network & Host name**
Chọn **Enable** để bật kết nối

![a](https://f5-zpcloud.zdn.vn/2832262989033767064/1ad63eeb3daaf0f4a9bb.jpg)

- Sau khi cấu hình xong, chọn **Begin Installtion**

![a](https://f5-zpcloud.zdn.vn/8358411801569990991/04caa01da55c6802314d.jpg)

- Cài đặt mật khẩu cho **root** trong tùy chọn **root password**

![a](https://f4-zpcloud.zdn.vn/1476308376420989754/96a3f12ff66e3b30627f.jpg)

- Chọn **Reboot** để hoàn thành 

![a](https://f5-zpcloud.zdn.vn/3807774005444072086/66e58023ab62663c3f73.jpg)

- Đăng nhập, kiểm tra địa chỉ ip đã cài và ổ địa đã cài

![a](https://f4-zpcloud.zdn.vn/7493663437588204154/7b21b68ac3c90e9757d8.jpg)

### III. Lấy lại mật khẩu root

#### Bước 1: Trong trình đơn khởi động grub chọn tùy chọn để chỉnh sửa.

- Trong trình đơn khởi động grub chọn tùy chọn để chỉnh sửa.

![a](https://f5-zpcloud.zdn.vn/8275745656770867030/6f4173484405895bd014.jpg)

#### Bước 2: Chọn e và  tìm tới dòng có chữ ro crashkernel=auto
Sau đó thêm dòng `rw init=/sysroot/bin/sh`

![a](https://f5-zpcloud.zdn.vn/5641367730501702225/38973fd40399cec79788.jpg)

#### Bước 3: Sau đó Ctrl+X để bắt đầu và chế độ single user mode.

![a](https://f5-zpcloud.zdn.vn/62374433458187826/754ba0729f3f52610b2e.jpg)

#### Bước 4: Bây giờ truy cập vào hệ thống với lệnh này:

`# chroot /sysroot`

#### Bước 5: Tạo mật khẩu mới cho tài khoản root.

`# passwd root`

![a](https://f5-zpcloud.zdn.vn/2196975818655144374/89401d282e65e33bba74.jpg)

#### Bước 6: Update thông tin vào selinux và thoát khỏi chế độ chroot.

```
# touch /.autorelabel
# exit
```

![a](https://f5-zpcloud.zdn.vn/6019242068776749528/1d6b028634cbf995a0da.jpg)

- Đăng nhập với mật khẩu vừa tạo ra:

![a](https://f5-zpcloud.zdn.vn/6820230524895797056/64f0639416d9db8782c8.jpg)