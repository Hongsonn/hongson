1. Chi tiết lỗi và nguyên nhân

![a](https://f4-zpcloud.zdn.vn/2354616314168348077/d87f8b0c50229c7cc533.jpg)

![a](https://f6-zpcloud.zdn.vn/8285369316081457083/4fc9636ec1400d1e5451.jpg)

Nguyên nhân hay gặp nhất là do Mail-server chưa được xác thực.
Giải pháp là tạo SPF, DMARC và DKIM record cho Mail-server.

2.  Tạo SPF record
Tên : @
Loại : TXT
Giá trị: v=spf1 +a +mx +ip4:103.28.38.111 ~all   (Thay địa chỉ IP bằng IP VPS của bạn)
TTL để mặc định ( mình thường để 300)

3. Tạo DMARC record

Tên: _dmarc
Loại : TXT
Giá trị: v=DMARC1; p=none; rua=mailto:mailauth-reports@zimbra.email-nhanhoa.com
TTL=300

4. Tạo DKIM record

- Đầu tiên truy cập SSH vào VPS.
- Tiếp đến active DKIM  cho Mail-server:
+ su zimbra

+ /opt/zimbra/libexec/zmdkimkeyutil -a -d email-nhanhoa.com

![a](https://f5-zpcloud.zdn.vn/5070840286126790724/2df7743dd3131f4d4602.jpg)

- Get DKIM
+  /opt/zimbra/libexec/zmdkimkeyutil -q -d email-nhanhoa.com

![a](https://f6-zpcloud.zdn.vn/8261604478140997703/ea981473b25d7e03274c.jpg)

Tạo record:
+ Tên : BB6A5E4E-8B22-11EC-B541-E43F485BC4B3._domainkey

+ Loại : TXT

+ Giá trị:

“v=DKIM1;k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArv/exfkvn0qlbIfQzuMwEwoXihcz39H6IU67D5Cr5zx2N47L6Cy0K2yWVSq5S2JDbwECBtrcoKV0vUMW/nQXqxCAT1X8izXMxYnRMHnH3ysfItP0kK6NymOCi6DyYFpifYOleM62R4edw/AvWSulJVHY4VmLEeFteJtRBHbPMQ2PIj04MSTKqWY1DmqwT7adI2k61JGcz+Ls+tlQ8eEsQ8BdIdxXKoeftTpH4S8q6EGMYVCEENGq6yygSBw3HEpzT78DWdFfm2DY2LKbR+Dnj/21KzY8QvK7cEfWaAA0eaXnR++nrd+OqXiEwq60e7yFEtiZb8B2EvhZQVSwIDAQAB”   (Khi lấy giá trị loại bỏ space và các dấu ” ” để gép lại thành một chuỗi)

+ TTL =300

5. Gửi thư từ Zimbra sang Gmail để test kết quả

Đợi 1 chút để cho các record được cập nhật