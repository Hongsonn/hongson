# I. Truyền file (File Transfer) FTP
### 1.1 Khái niệm

- FTP(File Transfer Protocol): là giao thức truyền file giữa các máy tính
- FTP được đặc tả trong RFC 959

### 1.2. Cách hoạt động
> Một phiên làm việc của FTP

- FPT thiết lập 1 đường kết nối thông tin điều khiển TCP qua cổng 21.
- Phía clien gửi thông tin định danh và mật khẩu cũng như lệnh thay đổi thư mục qua kết nối này.
- Client yêu cầu truyền file, FTP mở 1 kết nối TCP qua port 20 để truyền dữ liệu (Truyền đúng 1 file sau đó đóng lại - kết nối không liên tục).

### 1.3. Câu lệnh FTP (FTP Commands)
- Request từ client tới server được gửi thông qua kết nối điều khiển và mã hóa bằng 
ASCII 7 bit.
- Mỗi lệnh chứa 4 kí tự ASCII in hoa, một số lệnh có tham số.

# II. Thư tín điện tử (E-mail) trên Internet

Hệ thống mail trên Internet gồm 3 thành phần chính: user agent, mail server, SMTP(Simple Mail Transfer Protocol).

### 2.1. SMTP
- Được đặc tả trong RFC 821.
- SMTP truyền các thông điệp thư từ mail server của người gửi đến mail server của người nhận
- SMTP sử dụng port 25.
- Hoạt động cơ bản của SMTP:
  - User agent A gửi thư tới Mail server A
  - SMTP A tạo kết nối TCP tới SMTP B trên Mail server B
  - User agent B nhận được thư.

### 2.2. So sánh SMTP với HTTP

- Giống : Sử dụng kết nối liên tục 
- Khác:
 - HTTP là giao thức kiểu kéo (Pull protocol) - client "kéo" thông tin từ server về. Phía nhận (client) là phía thiết lập kết nối TCP
 - SMTP là giao thức theo kiểu đẩy (Push protocol) - client "đẩy" thông tin lên server. Phía gửi là phía thiết lập kết nối TCP trước.

 ## 2.3. Giao thức truy nhập mail
 > Giao thức POP3 và IMAP

**POP3 (Office Protocol - Version 3)** đặc tả trong RFC 1939 là giao thức lấy thư cực kì đơn giản và có rất ít chức năng.
- Sử dụng cổng 110
- Gồm 3 giai đoạn: Kiểm chứng , tiến hành xử lý và cập nhật
- Đọc thư ngay cả khi không có kết nối Internet

**IMAP (Internet Mail Access Protocol)** đặc tả trong RFC 2060, là giao thức lấy thư.
- Được thiết kế cho phép người dùng thao tác trên những hộp thư ở xa một cách dễ dàng
- Phiên làm việc IMAP gồm 3 giai đoạn: thiết lập kết nối giữa client và IMAP server, giai đoạn server chấp nhận kết nối, giai đoạn tương tác giữa client và server

# II. Dịch vụ tên miền - DNS
### 2.1. Các dịch vụ của DNS
> DNS:
    - Cơ sở dữ liệu phân tán được đặt trên một hệ thống phân cấp các máy phục vụ trên (nameserver)
    - Giao thức thuộc tầng ứng dụng cho phép máy tính và máy chủ tên trao đổi thông tin phục vụ mục đích xác định địa chỉ IP.

- DNS cung cấp một số dịch vụ quan trọng sau:
  - Dịch vụ đặt bí danh cho máy tính (Host aliasing)
  - Dịch vụ đặt bí danh cho mail server (Mail server aliasing)
  - Phân tán tải (load distribution)

### 2.2. Cơ chế hoạt động của DNS

- Client gửi thông điệp truy vấn DNS chứa tên máy cần xác định địa chỉ IP.
- Sau khoảng thời gian rất ngắn, client sẽ nhận được thông điệp của DNS chứa IP cần xác định
- Để triển khai được dịch vụ xác định IP, cần nhiều máy chủ tên (nameserver) đặt khắp nơi trên thế giới và 1 giao thức ở tầng ứng dụng xác định cách thức trao đổi thông tin giữa các nameserver và giữa các nameserver với máy tính.

**Triển khai DNS** có thể sử dụng 1 kiến trúc đơn giản 1 name server chứa tất cả các ánh xạ và địa chỉ IP. Nhưng gặp 1 số vấn đề: 
- Điểm hỏng duy nhất (A single point of failure): nameserver ngừng hoạt động toàn bộ internet ngừng hoạt động 
- Khối lượng công việc (Traffic volume): 1 nameserver duy nhất phải xử lý tất cả các truy vấn DNS
- Cơ sở dữ liệu tập trung ở xa ( distant centralized database): Nameserver duy nhất không thể gần tất cả các client 
- Bảo trì (maintenance): cở sở dữ liệu lớn, phải cập nhật thường xuyên

**Giải quyết vấn đề trên:** DNS được thiết kế phân tán, sử dụng nhiều nameserver tổ chức phân cấp và phân tán trên toàn cầu.
>Có 3 loại nameserver: Local nameserver, root nameserver, authoritative nameserver

- Local nameserver: 
