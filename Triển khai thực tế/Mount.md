# Mount 

1. Yêu cầu :

![a](https://f4-zpcloud.zdn.vn/7105597454458290403/c85b33be4473892dd062.jpg)

2. Tiến hành

- Sử dụng raid 1:
- Khi tiến hành cài đặt centos tạo 2 phân vùng (/) và (/boot) trước
- Sau khi cài đặt xong ta được kết quả

![a]()

- Tiến hành tạo phân vùng mới sử dụng: `fdisk /dev/sda/`

- Tạo thư mục để mount: `mkdir /var/lib/mysql`
- Tiến hành mount thư mục: `mount /dev/sda3 /var/lib/mysql`
  - Có thể gặp lỗi:

![a](https://f4-zpcloud.zdn.vn/3978767567544784063/e769ada1c36c0e32577d.jpg)

  - Sử dụng `mkfs.ext4 /dev/sda3` 
  
![a](https://f5-zpcloud.zdn.vn/6413403262671087446/e89e5c50399df4c3ad8c.jpg)

- Chỉnh sửa file `/etc/fstab`:

![a](https://f5-zpcloud.zdn.vn/5952804563975000512/ed2ee08f7e42b31cea53.jpg)