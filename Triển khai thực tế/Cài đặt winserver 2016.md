# I.Cài đặt win server 2016

1. Cài đặt win server

Đối với việc cài đặt win server 2016 tương đối giống với cài đặt win server 2012, có thể xem tại [đây](https://github.com/Hongsonn/hongson/blob/b7ded488400eb13c3befae59733759b3aa6847eb/Tri%E1%BB%83n%20khai%20th%E1%BB%B1c%20t%E1%BA%BF/C%C3%A0i%20%C4%91%E1%BA%B7t%20winserver%202012.md)


![a](https://f4-zpcloud.zdn.vn/3656450633609890845/d02b1c328432496c1023.jpg)

2. Cài đặt ip để cung cấp cho khách hàng

3. Kiểm tra server đã đi ra ngoài internet chưa

![a](https://f5-zpcloud.zdn.vn/130225057067705347/ee5f8deab4e879b620f9.jpg)

4. Bật tường lửa và thiết lập rule để có thể kết nối ra bên ngoài.

- Bật tường lửa:

![a](https://f5-zpcloud.zdn.vn/3056006056382819111/0af148ad49af84f1ddbe.jpg)

- Thiết lập port remote:

  - Truy cập regedit

![a](https://f5-zpcloud.zdn.vn/7676020419751501149/67d59165b96774392d76.jpg)


  - Truy cập theo đường dẫn : `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\PortNumber`

![a](https://f5-zpcloud.zdn.vn/8389912802096351873/14b79e6abb6876362f79.jpg)

  - Chọn đến Modify

![a](https://f4-zpcloud.zdn.vn/2202330171744222366/2f354d2e6f2ca272fb3d.jpg)

  - Lựa chọn Decimal và nhập port mà bạn muốn đổi

![a](https://f5-zpcloud.zdn.vn/3961371693455980008/877012af36adfbf3a2bc.jpg)


