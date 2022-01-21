# Mount 

1. Yêu cầu :

![a](https://f4-zpcloud.zdn.vn/7105597454458290403/c85b33be4473892dd062.jpg)

2. Tiến hành

**Trường hợp 1**:

- Sử dụng raid 1:
- Khi tiến hành cài đặt centos tạo 2 phân vùng (/) và (/boot) trước
- Sau khi cài đặt xong ta được kết quả

![a]()

- Tiến hành tạo phân vùng mới sử dụng: `fdisk /dev/sda/`

- Tạo thư mục để mount: `mkdir /var/lib/mysql`
- Tiến hành mount thư mục: `mount /dev/sda3 /var/lib/mysql`
  - Có thể gặp lỗi:

![a](https://f4-zpcloud.zdn.vn/3978767567544784063/e769ada1c36c0e32577d.jpg)

  - Sử dụng `mkfs.ext4 /dev/sda3` để format ổ cứng
  
![a](https://f5-zpcloud.zdn.vn/6413403262671087446/e89e5c50399df4c3ad8c.jpg)

- Chỉnh sửa file `/etc/fstab`:

![a](https://f5-zpcloud.zdn.vn/5952804563975000512/ed2ee08f7e42b31cea53.jpg)


**Trường hợp 2:**

Không có raid

- Tiến hành phân vùng đối với ổ cứng 1:

![a](https://f5-zpcloud.zdn.vn/2914580462495555579/161225e6b72a7a74233b.jpg)

- Kiểm tra các phân vùng:

![a](https://f5-zpcloud.zdn.vn/5405365945137771525/b3ed5c5e81924ccc1583.jpg)

- Tạo thư mục cần mount: `mkdir /var/lib/mysql`

- Sử dụng `mkfs.ext4 /dev/sda3` để format ổ cứng và mount vào thư mục: `mount /dev/sdb /var/lib/mysql`

![a](https://f5-zpcloud.zdn.vn/2630640068636775064/3bf243816c49a117f858.jpg)

- Chỉnh sửa file `/etc/fstab`:

![a](https://f5-zpcloud.zdn.vn/1876281253402426932/3aa1c6019fc952970bd8.jpg)

- Khởi động lại và kiểm tra kết quả:

![a](https://f5-zpcloud.zdn.vn/2808078107099602406/b7581cd6441e8940d00f.jpg)
