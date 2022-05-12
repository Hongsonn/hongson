# Cài đặt winserver 2019

#### I. Chuẩn bị usb boot win server 2019

#### II. Tiến hành cài đặt:

1. **Cài đặt hệ điều hành**

- Truy cập vào BIOS Boot Manager:

![a](https://f4-zpcloud.zdn.vn/8125672928299742671/addd16f119e7d4b98df6.jpg)

- Tiếp đó truy cập vào BIOS Boot Menu:

![a](https://f5-zpcloud.zdn.vn/3086502537968617742/f5e9b637b2217f7f2630.jpg)

- TRuy cập vào USB boot để tiến hành cài đặt:

![a](https://f5-zpcloud.zdn.vn/8904641252933688613/4097bc70b96674382d77.jpg)

- Chọn ngôn ngữ, bàn phím, ấn Next để tiến hành cài đặt

![a](https://f5-zpcloud.zdn.vn/4664777415967586853/0fbf26471e51d30f8a40.jpg)

- Nhấn Install now, để cài đặt:

![a](https://f4-zpcloud.zdn.vn/1275640374790310390/c1ec59f061e6acb8f5f7.jpg)

- Chọn phiên bản bạn muốn cài đặt:

![a](https://f5-zpcloud.zdn.vn/7062796543120125920/63bb1ce225f4e8aab1e5.jpg)

- Chọn "I accept the license terms"

![a](https://f4-zpcloud.zdn.vn/3095662374384706126/440aca32f0243d7a6435.jpg)

- Chọn "Custom: Install Windows only" để cài đặt

![a](https://f5-zpcloud.zdn.vn/1736072637117362486/2a8430640b72c62c9f63.jpg)

- Chọn ổ để cài đặt

![a](https://f5-zpcloud.zdn.vn/6557870928350283349/657064905f8692d8cb97.jpg)

- Quá trình cài đặt sẽ diễn ra ít phút, tuỳ thuộc vào cấu hình máy của bạn

![a](https://f5-zpcloud.zdn.vn/7252432668313947032/554a9040ab5666083f47.jpg)

- Cài đặt mật khẩu cho tài khoản Administrator

![a](https://f5-zpcloud.zdn.vn/3053118998993820279/88b58eb8dfae12f04bbf.jpg)

- Màn hình sau khi cài đặt xong:

![a](https://f5-zpcloud.zdn.vn/8639066784932666957/6c4529ed7afbb7a5eeea.jpg)

2. **Cấu hình địa chỉ ip**

![a](https://f5-zpcloud.zdn.vn/6791097614555379011/63d9b9ac74bab9e4e0ab.jpg)

3. **Bật remote**

![a](https://f5-zpcloud.zdn.vn/1033186263120701150/009432cf65d9a887f1c8.jpg)

- Kết quả:

![a](https://f5-zpcloud.zdn.vn/8875933409697177959/bfc4e349aa5f67013e4e.jpg)

4. **Thiết lập port và chỉ cho phép địa chỉ IP cụ thể kết nối với cổng đó**

- Truy cập **Windows Defender Firewall with Advanced Security**

![a](https://f5-zpcloud.zdn.vn/3208186454054858790/e26cbcb9f7af3af163be.jpg)

- Chọn **Inbound Rules** để thiết lập các rules từ ngoài kết nối đến server
- Chọn **New rules** để tạo các rule mới

![a](https://f4-zpcloud.zdn.vn/4799977065340740106/52bc5e701266df388677.jpg)

- Click **Custom** => Next

![a](https://f5-zpcloud.zdn.vn/3381715384407989287/f5ac16e95aff97a1ceee.jpg)

- Chọn **All Program**

![a](https://f4-zpcloud.zdn.vn/8171776659905860571/9dfdec1ea1086c563519.jpg)

- Chọn **Protocol type: TCP** , **Remote port => Specific Port**, nhập số port mà bạn muốn kết nối.

![a](https://f5-zpcloud.zdn.vn/9202817594650266255/81ed5a09141fd941800e.jpg)

- Nhập Địa chỉ IP từ xa mà bạn muốn kết nối cổng: Click **Add**, nhập **IP Address**, Click **OK** => **Next**

![a](https://f5-zpcloud.zdn.vn/3764402202358133844/166602881f99d2c78b88.jpg)

![a](https://f5-zpcloud.zdn.vn/6086875156902002298/a46de327ea3627687e27.jpg)

- Click **Allow the connection** => click **Next**

![a](https://f5-zpcloud.zdn.vn/956748307290355071/4a9bdcfa9cec51b208fd.jpg)

![a](https://f4-zpcloud.zdn.vn/6741302564461823550/d49379643872f52cac63.jpg)

- Đặt tên cho rule:

![a](https://f4-zpcloud.zdn.vn/1421247699903650462/8e8a53de12c8df9686d9.jpg)


==========================

Allow một số ip nhất định cho remote

vào firewall chọn => Inbound rules => bật 3 rule như ảnh, sau đó vào rule `remote desktop - user mode (TCP -In)` chọn scope thêm các ip được thông qua firewall

https://prnt.sc/vEMKHhA_xkMx