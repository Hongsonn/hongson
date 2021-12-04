# Lắp đặt Server trên DC 
### 1.Chuẩn bị:
- Hai server đã cài đặt OS (Operating System)
- Hai thanh đỡ server
- Các dụng cụ lắp đặt (tô-vít, dây cáp mạng,...)
### 2. Quy trình thực hiện
- Bước 1: Kiểm tra vị trí lắp đặt server trong tủ rack có đúng hay chưa.

![rack](https://scontent.xx.fbcdn.net/v/t1.15752-9/s206x206/260775650_331713915055556_3091377182255297873_n.png?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Z2RochllVwcAX96xNBp&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=c52cce6894be436fb966190dd4aac6a6&oe=61D232CF)

- Bước 2: Lắp đặt server vào các vị trí đã bố trí trước. 

![u9](https://scontent.xx.fbcdn.net/v/t1.15752-9/s280x280/262062024_612843739759962_8003450223099691131_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=aee45a&_nc_ohc=ucQP6FxXXQMAX_tZ5C0&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=1081027eb41685b2636eb36a2221afa1&oe=61D19A34)

- Bước 3: Lắp thanh đỡ server, kiểm tra xem đã lắp đúng và cố định chưa. Nên tạo khoảng cách nhỏ giữa các server lắp đặt liền kề.

![thanhdo](https://scontent.xx.fbcdn.net/v/t1.15752-9/p160x160/262562846_595869154997393_3601462006243061665_n.png?_nc_cat=106&ccb=1-5&_nc_sid=aee45a&_nc_ohc=47-f5TahhSEAX8zTE0w&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=5a0a6a6470a570176f56af3600eaa731&oe=61D29C0C)

- Bước 4: Lắp đặt server vào vị trí thanh đỡ, nên đặt nhẹ tay để tránh ảnh hưởng tới server
- Bước 5: Sau khi lắp đặt server vào vị trí, cấp nguồn cho server từ thanh PDU (Power Distribution Unit) 

![udp](https://scontent.xx.fbcdn.net/v/t1.15752-9/s370x247/262502536_207439168130029_4885232419589592085_n.png?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=hawrv0WR9a8AX9NOZIJ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=bd59f148fdab729ebf12bec9ccfcc6b6&oe=61D011F3)

- Bước 6: Khởi động Server.

![on](https://scontent.xx.fbcdn.net/v/t1.15752-9/p160x160/261775585_210632004558657_949438169378481780_n.png?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=F02gr32J_dsAX8cr5TS&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=22774a5c88b0550e6e4044f330c874be&oe=61D05F66)

- Bước 7: Tiến hành kết nối với switch vào server, để server có thể kết nối với mạng bên ngoài.

![Switch](https://scontent.xx.fbcdn.net/v/t1.15752-9/s261x260/263173372_878336462880596_3752581078600330340_n.png?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Dp1IRCn2BKYAX_M5S3K&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=f11988b5ec90f532ec9b2078e8183a6c&oe=61CED9DF)

- Bước 8: Thực hiện kết nối bàn phím và màn hình vào server. Sau đó kiểm tra kết nối mạng.
  - Kiểm tra địa chỉ ip
  - Ping để kiểm tra xem đã kết nối được tới Internet hay chưa

- Bước 9: Sau khi quá trình kiểm tra hoàn tất, tiến hành gắn thẻ chứa các thông tin cho server(Đơn vị cung cấp, số hiệu, địa chỉ IP) và hoàn tất cài đặt.

![tag](https://scontent.xx.fbcdn.net/v/t1.15752-9/s280x280/260284638_472077410924874_8498075560285794258_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=t64ZrPQn7PAAX9uMYbh&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=6ab44f32ea0491ef81a13fb09db85aea&oe=61D121CD)

# Note
- Khu vực lắp đặt các server của công ty tại các DC:
 - Tại tầng 1 có DC 3 lắp đắt server của công ty lắp đặt các dịch vụ
 - Tại tầng 2 có DC 1 và DC 2
- Nơi server có nhiệt độ phù hợp để giúp server vận hành tốt hơn.
- Khi tiến hành chọn vị trí lắp đặt server thì nên chọn 3u liền kề đối với 3 server, mỗi server chiếm 1u (tùy vào kích thước của server) trong tủ rack.

![u](https://scontent.fhan5-3.fna.fbcdn.net/v/t1.15752-9/261322180_1063667884417423_902790606466197845_n.png?_nc_cat=106&ccb=1-5&_nc_sid=ae9488&_nc_ohc=K2ZvU5pDdHUAX_qTurH&_nc_ht=scontent.fhan5-3.fna&oh=83bcb3392a6ac94c93f6a9ec0cdfa575&oe=61CFA225)

- Khi kết nối switch với server, kết nối đúng dây, tránh nhầm lẫn, mỗi dây đều có đánh số

![number](https://scontent.xx.fbcdn.net/v/t1.15752-9/s240x240/263373635_228258069310208_5911261665030054935_n.png?_nc_cat=105&ccb=1-5&_nc_sid=aee45a&_nc_ohc=wTfRo64D1XcAX_O2RuM&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=58aea19170f677dd615a4242025c7a09&oe=61D0661B)

- Trong dịch vụ lắp đặt server được chia ra làm 2: 
  - Nội bộ
  - Khách hàng
