# Cài đặt centos 6

- Cài đặt với usb đã chuẩn bị trước đó:
![a](https://f5-zpcloud.zdn.vn/1266169855836369434/d70057c355ad98f3c1bc.jpg)

- Lựa chọn ngôn ngữ:

![a](https://f5-zpcloud.zdn.vn/1217824359461179637/b93daff8ac9661c83887.jpg)

- Chọn bàn phím :

![a](https://f5-zpcloud.zdn.vn/2188891620790833657/c3fe0a410e2fc3719a3e.jpg)

- chọn Basic Storage Devices để cài đặt trên thiết bị lưu trữ, chọn Next để tiếp tục cài đặt.

![a](https://f5-zpcloud.zdn.vn/9027395070725744486/eb9586a182cf4f9116de.jpg)

- Hệ thống sẽ cánh báo về việc thay đổi tất cả các dữ liệu trên ổ đĩa, Chọn Yes, discard any data, để cho phép và chọn Next để tiếp tục cài đặt.

![a](https://f4-zpcloud.zdn.vn/8322051525170389698/f1ca60b265dca882f1cd.jpg)

- Đặt hostname cho máy tính, chọn Next để tiếp tục cài đặt.

![a](https://f5-zpcloud.zdn.vn/6484497418893408519/cc5e633a6554a80af145.jpg)

- Chọn Time Zone Asia/Ho Chi Minh, chọn Next để tiếp tục cài đặ

![a](https://f5-zpcloud.zdn.vn/1970803352780370066/cf4b9d219a4f57110e5e.jpg)

- Đặt mật khẩu cho root:

![a](https://f5-zpcloud.zdn.vn/7920156381755155484/b357a95a91345c6a0525.jpg)

- Chọn Create Custom Layout để có thể tự tạo phân vùng ổ đĩa theo ý muốn

![a](https://f4-zpcloud.zdn.vn/1158904725600208430/1ce8e54fdc21117f4830.jpg)

- Để tạo phân vùng ổ đĩa, chọn Create.

![a](https://f5-zpcloud.zdn.vn/6018321390402653646/3eefff33c55d0803514c.jpg)

- Tạo phân vùng (/boot)

![a](https://f5-zpcloud.zdn.vn/8731719046559775330/72e4efb441c08c9ed5d1.jpg)

- Tạo phân vùng (/)

![a](https://f5-zpcloud.zdn.vn/4238915020512083120/c3151c1ab16e7c30257f.jpg)

- Chọn Format, để định dạng lại ổ đĩa.

![a](https://f5-zpcloud.zdn.vn/1682258585908034656/d2ac0373341df943a00c.jpg)

- Chọn Write changes to disk, để cho phép ghi lại những thay đổi phân vùng trên ổ đĩa.

![a](https://f5-zpcloud.zdn.vn/4732743955014637886/de708994a1fa6ca435eb.jpg)

- Kiểm tra lại các thông tin xem đã chính xác hết chưa. Ấn next để tiếp tục

![a](https://f4-zpcloud.zdn.vn/954951912999794135/b66aaca882c64f9816d7.jpg)

- Sau khi cài đặt hoàn tất, chúng ta khởi động lại máy

![a](https://f5-zpcloud.zdn.vn/4642946741892209353/b60865b8bdcc709229dd.jpg)

- Sau khi khởi động xong, xuất hiện màn hình cấu hình.

![a](https://f4-zpcloud.zdn.vn/3128405987085773271/9bbe641fe7762a287367.jpg)

- Chọn Yes, I agree to the License Agreement để chấp nhận điều khoản của CentOS.

![a](https://f5-zpcloud.zdn.vn/5836489688378613615/350056f7d29e1fc0468f.jpg)

- Tạo một tài khoản người dùng thông thường.

![a](https://f5-zpcloud.zdn.vn/6782667483135325105/c9164770c2190f475608.jpg)

- Kiểm tra lại ngày giờ: 

![a](https://f5-zpcloud.zdn.vn/2405152793466545214/1b7b7af6fd9f30c1698e.jpg)

- Nhấn Finish để hoàn tất:

![a](https://f5-zpcloud.zdn.vn/6372719387073865162/e160e2895ae097becef1.jpg)

# Cài đặt lại mật khẩu root:

- Vào GRUB menu
Chọn OS đang chạy và ấn phím 'e' để edit

![a](https://f5-zpcloud.zdn.vn/6079130779903662791/4008f3521b3bd6658f2a.jpg)

- Chọn dòng thông tin kernerl /vmlinuz-x.x.x . Ấn phím 'e' để edit

![a](https://f4-zpcloud.zdn.vn/974209781439309643/ece02638cc51010f5840.jpg)

- Điền số ‘1’ (hoặc “single mode”) vào sau cụm thông số “rhgb quiet”. Thông số “1” sẽ giúp ta load vào chế độ run level single mode (1).

![a](https://f5-zpcloud.zdn.vn/8187618644112018105/036ea47c4915844bdd04.jpg)

- Ấn “Enter” để hệ thống save cấu hình tạm thời và quay về màn hình GRUB ở bước 2.
- Tiếp bục ấn nút ‘b’ để boot vào hệ thống khi ở dòng thông tin “kernel /vmlinuz-x.x.x….”
- Tiến hành thay đổi mật khẩu root và khởi động lại máy

![a](https://f5-zpcloud.zdn.vn/1556819623585520905/8aa34273a01a6d44340b.jpg)


