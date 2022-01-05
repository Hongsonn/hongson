# Cấu hình và sử dụng iDRAC server Dell

### 1. Tổng quan về IDRAC

Để có thể xóa bỏ khoảng cách địa lý và thao tác dễ dàng với server. Ngày nay đã có 1 giải pháp đó là iDRAC (Integrated Dell Remote Access Controller) cung cấp tính năng để quản lý các thông số hardware của server từ xa, troubleshoot, remote thông qua một giao diện web người quản trị có thể không phải di chuyển tới server cắm màn hình cũng có thể thao tác với server của mình.

### 2. Cài đặt iDRAC

1. Đối với từng loại server ta ấn phím tương ứng để tiến hành vào **system setup** (Dell - F2)
2. Tiến hành bật cấu hình iDRAC:
- Truy cập vào Network: để cấu hình IP
- Truy cập Use config: Chọn tùy chọn Enable:
  - root và đặt mật khẩu
  - Các tùy chọn: LAN use privilege, serial port user privilege: Administrator
- Nếu lỗi có thể sử dụng tùy chọn **Restart iDRAC** để tiến hành cấu hình lại

3. Sau khi cài đặt thành công login vào iDRAC thông qua địaa chỉ ip và username/pass đã cấu hình: `https://ip_idrac`

![a](https://f4-zpcloud.zdn.vn/2231299660265816187/1f0b4afb40478a19d356.jpg)

![a](https://f4-zpcloud.zdn.vn/123044497697967617/c23b86d581694b371278.jpg)

### 3. Giám sát các thông tin tên iDRAC
1. **Tab Server**
- `Properties`: Cung cấp các thông tin chung về server và đường link truy cập nhanh tới các mục khác, cửa sổ console để remote desktop, thao tác nhanh đối với server như Power ON /OFF…, thông tin về về server như BIOS, IP, Firmware OS. 

![a](https://f4-zpcloud.zdn.vn/2193891662624777759/e2feebc9a975632b3a64.jpg)

- `Attached Media`: Cấu hình cho phép việc đính kèm file ISO của OS lên hay không, chia sẻ file hay không

![a](https://f5-zpcloud.zdn.vn/6167923082861244734/112ec9ea885642081b47.jpg)

- `Log`: Hiển thị thông tin log đối với server có sắp xếp theo mức độ, time/date

![a](https://f5-zpcloud.zdn.vn/5463058445058937610/1cb9ba8dc1310b6f5220.jpg)

- `Power / Thermal`: Hiển thị các thông tin về nguồn và nhiệt độ của server

![a](blob:https://chat.zalo.me/474c91ac-a559-4961-b43a-1375d4386cff)

- `Virtual Console`: Thiết lập về các thông số cho việc console tới server từ xa.

![a](https://f5-zpcloud.zdn.vn/8574906549064022972/da6372d40268c8369179.jpg)

- `Setup`: Thiết lập thứ tự boot cho server khi khởi động.

![a](https://f5-zpcloud.zdn.vn/8815636409543995701/85e2415e1ce1d6bf8ff0.jpg)

2. **Tab iDRAC Settings**

Cung cấp thông tin về các thông số setup cho iDRAC như network, user authentication, update and rollback, sessions,

![a](https://f5-zpcloud.zdn.vn/7566214128175866339/8b6472763ec9f497add8.jpg)
![a](https://f4-zpcloud.zdn.vn/4476398156308225161/e6c39eded5611f3f4670.jpg)

- `Network`: Thông tin cấu hình network cho iDRAC

![a](https://f5-zpcloud.zdn.vn/5993198995954526174/fb677f6407dbcd8594ca.jpg)

- `User Authentication`: Thông tin liên quan đến setup user login iDRAC

![a](https://f4-zpcloud.zdn.vn/3417107792131082125/b5ac9628ee9724c97d86.jpg)

- `Update and Rollback`: Update firmware cho iDRAC

![a](https://f5-zpcloud.zdn.vn/3445056009314712490/5eef77a80017ca499306.jpg)

- `Server Profile`: Backup and Export Server Profile

![a](https://f5-zpcloud.zdn.vn/3596329296643058443/c2fd205356ec9cb2c5fd.jpg)

- `Sessions`: Hiển thị phiên kết nối vào trình iDRAC

![a](https://f5-zpcloud.zdn.vn/241645100808801251/b4afc89bbd24777a2e35.jpg)

3. **Tab Hardware**

Cung cấp các thông tin về phần cứng server

![a](https://f5-zpcloud.zdn.vn/1402564791827825070/7200f3f4964b5c15055a.jpg)

- Batteries: Hiển thị trạng thái của pin main

- Fan: Thạng thái fan trong server

- CPU: Trạng thái của CPU

- Memory: Trạng thái RAM

- Front Panel: Trạng thái biểu tượng phía mặt trước của server

- Network Devices: Trạng thái và thông tin về các card mạng trên server và các card cắm thêm.

- Power Supplies: Thông tin trạng thái về nguồn server

- Removable Flash Media: Các phương tiện có thể tháo rời

4. **Tab Storage**

Hiển thị storage

![a](https://f4-zpcloud.zdn.vn/3446337660068567564/32263626e99923c77a88.jpg)

- Physical Disk: Các ổ cứng vật lý

![a](https://f5-zpcloud.zdn.vn/726645478435022606/40f725aaf1153b4b6204.jpg)

- Vitual Disk: ổ đĩa ảo

![a](https://f5-zpcloud.zdn.vn/942129626387949843/9ed5a9c37a7cb022e96d.jpg)
- Controllers: 

![a](https://f5-zpcloud.zdn.vn/3697064567572303453/413d964145fe8fa0d6ef.jpg)

- Enclosures:

![a](https://f4-zpcloud.zdn.vn/2269889754251319330/1db1aa0b46b48cead5a5.jpg)