### 1. Apache:
Là chương trình máy chủ HTTP là một chương trình dành cho máy chủ đối thoại qua giao thức HTTP. Apache là phần mềm web server được sử dụng rộng rãi nhất và là 1 phần mềm nguồn mở miễn phí

### 2. Web server
- Web server có nhiệm vụ là đưa website lên internet. Để thực hiện được điều đó, nó hoạt động như là 1 người đứng giữa server và client. Nó sẽ kéo nội dung từ server về cho mỗi 1 truy vấn xuất phát từ máy khách để hiện thị kết quả tương ứng dưới hình thức là 1 website

### 3. Cách hoạt động của Apache Web Server

![apache](https://f5-zpcloud.zdn.vn/3540375853209056262/ae62ab1eb18e7ad0239f.jpg)

- Apache là một phần mềm chạy trên server, thiết lập kết nối giữa máy chủ và các trình duyệt của người dùng. Trao đổi file theo mô hình client-server.
- Khi người dùng truy cập vào 1 trang web, trình duyệt sẽ gửi request đó đến server. Sao đó, Apache sẽ trả kết quả đầy đủ các file trong website đó như nội dung, hình ảnh, video,... Server và client sẽ giao tiếp bằng giao thức HTTP. Lúc đó Apache sẽ đảm nhiệm về tiến trình này diễn ra mượt mà và bảo vệ 1 cách tối ưu nhất.
- Apache là 1 nền tảng module có độ tùy biến cao. Modules cho phép các quản trị viên server tắt hoặc thêm chức năng. Web server Apache có các mô-đun bổ sung nhiều chức năng hơn cho phần mềm của nó, chẳng hạn như MPM (để xử lý các chế độ đa xử lý) hoặc mod_ssl để bật hỗ trợ SSL v3 và TLS

### 4.Ưu và nhược điểm của Apache:
- Ưu điểm:
  - Hỗ trợ miễn phí
  - Độ tin cậy và tính ổn định cao: được đánh giá là phần mềm đáng tin cậy và ổn định. Luôn được cập nhật thường xuyên và nâng cấp với nhiều bản vá lỗi bảo mật liên tục.
  - Hoạt động đa nền tảng

- Nhược điểm:
  - Chiếm khá nhiều bộ nhớ mỗi khi xử lý dữ liệu
  - Gặp vấn đề về hiệu năng như kém linh hoạt, sử lý hơi chậm nếu các website có độ traffic cao
  - Có nhiều lựa chọn thiết lập có thể gây ra điểm yếu về bảo mật

### 5. Cài đặt Apache trên Centos7
1. Cài đặt Apache:

- Sử dụng lệnh để cập nhật những packages mới nhất: `sudo yum update`
- Để cài đặt Apache, sử dụng : `sudo yum install httpd`
- Khởi động Apache: `sudo systemctl start httpd`
- Cài đặt để dịch vụ khởi động cùng hệ thống: `sudo systemctl enable httpd`
- Truy cập vào trình duyệt web để kiểm tra xem việc cài đặt đã thành công chưa:
![apache](https://f4-zpcloud.zdn.vn/5299107107252929036/21c2883049a382fddbb2.jpg)

2. Cấu hình Firewall để cho phép truy cập Apache:
- Lưu lượng truy cập web thông thường sử dụng giao thức http trên port 80, web mã hóa sử dụng giao thức https trên port 443
- Thay đổi Firewall để cho phép kết nối các cổng này bằng lệnh:
`firewall-cmd --permanent --add-port=80/tcp`
`firewall-cmd --permanent --add-port=443/tcp`
- Sau khi hoàn thành hãy reload firewall để áp dụng thay đổi các bước cài đặt: `firewall-cmd --reload`

3. Các lệnh khác để quản lý Apache:
- Ngừng dịch vụ Apache: `sudo systemctl stop httpd`
- Ngăn chặn hoặc vô hiệu hóa Apache khi khởi động hệ thống: `sudo systemctl disable httpd`
- Khởi động Apache cùng hệ thống: `sudo systemctl enable httpd`
- Khởi động lại Apache và áp dụng bất kì thay đổi nào đã thực hiện: `sudo systemctl restart httpd`
- Kiểm tra tình trạng Apache đang tắt hay đang chạy: `sudo systemctl status httpd`

