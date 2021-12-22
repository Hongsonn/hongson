# Cài đặt Cpanel sử dụng Key Trial

### 1. Chuẩn bị:
OS: CentOS 7 - 64 bits Blank chưa cài đặt dịch vụ gì 
RAM: 2GB 
CPU:2 
Disk:15GB 
IP public để lấy license và tự động active 

### 2. Cài đặt:

- Truy cập vào trang chủ `https://cpanel.net/products/trial/` để đăng ký key trial

![a](https://f5-zpcloud.zdn.vn/3895096028308433197/9dc7f077c4530e0d5742.jpg)
![a](https://f5-zpcloud.zdn.vn/680065161721373275/3817bf138d3747691e26.jpg)

- Kiểm tra email và truy cập vào link hướng dẫn

![a](https://f5-zpcloud.zdn.vn/8743161096382999183/0373c9b2e39629c87087.jpg)

![a](https://f4-zpcloud.zdn.vn/1440866388853057301/166720130537cf699626.jpg)

- Cài đặt chuẩn bị OS

  - Kiểm tra phiên bản, Cài đặt hostname, update
  ![a](https://f4-zpcloud.zdn.vn/1821239949873112594/6f13ea26a0026a5c3313.jpg)

  - Cài đặt thêm package hỗ trợ:
  ![a](https://f5-zpcloud.zdn.vn/3261275708026606440/e10cdbf09fd4558a0cc5.jpg)

  - Cài đặt firewall
  ![a](https://f4-zpcloud.zdn.vn/2745698283509222200/f1118c14f6303c6e6521.jpg)

  - SElinux
  ![a](https://f5-zpcloud.zdn.vn/3281687028278229737/686945bc2e98e4c6bd89.jpg)

  - Ipv6
  ![a](https://f5-zpcloud.zdn.vn/7223308854788104904/bdb6fca39f8755d90c96.jpg)

  - NTPD
  ![a](https://f5-zpcloud.zdn.vn/4832667667894852894/7c7610b19a9550cb0984.jpg)

  - Cmdlog:
  ![a](https://f4-zpcloud.zdn.vn/668386821456652709/5f592d78905c5a02034d.jpg)

  - reset: `init 6`
  - Mở byobu lên để giữ phiên cài đặt:`byobu`
  - Cài đặt Cpanel 
  ![a](https://f4-zpcloud.zdn.vn/5013819707347440083/cbadb60a102eda70833f.jpg)

  - Cài đặt thành công: 
  ![a](https://f5-zpcloud.zdn.vn/5036660937818145091/4c292353ea7720297966.jpg)

  - Truy cập vào địa chỉ :`103.176.178.94:2087`
  - Login:
  ![a](https://f5-zpcloud.zdn.vn/2523748414366497090/b1af73d0b7f47daa24e5.jpg)

  - Chấp nhận các ddiefu khoản:
  ![a](https://f4-zpcloud.zdn.vn/1160592464219597822/86dd71c3b1e77bb922f6.jpg)

  - Điền email và name server:
  ![a](https://f5-zpcloud.zdn.vn/2363732533336320641/58a1f7570473ce2d9762.jpg)

  

