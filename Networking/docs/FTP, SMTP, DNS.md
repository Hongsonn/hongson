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

 ### 2.3. Giao thức truy nhập mail
 > Giao thức POP3 và IMAP

**POP3 (Office Protocol - Version 3)** đặc tả trong RFC 1939 là giao thức lấy thư cực kì đơn giản và có rất ít chức năng.
- Sử dụng cổng 110
- Gồm 3 giai đoạn: Kiểm chứng , tiến hành xử lý và cập nhật
- Đọc thư ngay cả khi không có kết nối Internet

**IMAP (Internet Mail Access Protocol)** đặc tả trong RFC 2060, là giao thức lấy thư.
- Được thiết kế cho phép người dùng thao tác trên những hộp thư ở xa một cách dễ dàng
- Phiên làm việc IMAP gồm 3 giai đoạn: thiết lập kết nối giữa client và IMAP server, giai đoạn server chấp nhận kết nối, giai đoạn tương tác giữa client và server

# III. Dịch vụ tên miền - DNS

### 3.1. Các dịch vụ của DNS

**Khái niệm DNS:**
- Cơ sở dữ liệu phân tán được đặt trên một hệ thống phân cấp các máy phục vụ trên (name server)
- Giao thức thuộc tầng ứng dụng cho phép máy tính và máy chủ tên trao đổi thông tin phục vụ mục đích xác định địa chỉ IP.

- DNS cung cấp một số dịch vụ quan trọng sau:
  - Dịch vụ đặt bí danh cho máy tính (Host aliasing)
  - Dịch vụ đặt bí danh cho mail server (Mail server aliasing)
  - Phân tán tải (load distribution)

### 3.2. Cơ chế hoạt động của DNS

- Client gửi thông điệp truy vấn DNS chứa tên máy cần xác định địa chỉ IP.
- Sau khoảng thời gian rất ngắn, client sẽ nhận được thông điệp của DNS chứa IP cần xác định
- Để triển khai được dịch vụ xác định IP, cần nhiều máy chủ tên (name server) đặt khắp nơi trên thế giới và 1 giao thức ở tầng ứng dụng xác định cách thức trao đổi thông tin giữa các name server và giữa các name server với máy tính.

**Triển khai DNS** có thể sử dụng 1 kiến trúc đơn giản 1 name server chứa tất cả các ánh xạ và địa chỉ IP. Nhưng gặp 1 số vấn đề: 
- Điểm hỏng duy nhất (A single point of failure): name server ngừng hoạt động toàn bộ internet ngừng hoạt động 
- Khối lượng công việc (Traffic volume): 1 name server duy nhất phải xử lý tất cả các truy vấn DNS
- Cơ sở dữ liệu tập trung ở xa ( distant centralized database): Name server duy nhất không thể gần tất cả các client 
- Bảo trì (maintenance): cở sở dữ liệu lớn, phải cập nhật thường xuyên

**Giải quyết vấn đề trên:** DNS được thiết kế phân tán, sử dụng nhiều name server tổ chức phân cấp và phân tán trên toàn cầu.
>Có 3 loại name server: Local name server, root name server, authoritative name server

- Local name server: Có thể là các trường học, tổ chức 
- Root name server: Trên internet có 13 root name server, nếu local name server không thể trả loài truy vấn, thì local name server đóng vai trò client DNS gửi tới root name server để có được câu trả lời
- Authoriative name server: là một name server luôn lưu trữ bản ghi DNS cho phép xác định địa chỉ IP của máy tính đó từ tên.

### 3.3. Bản ghi DNS

- A record: trỏ tên website tới 1 ip cụ thể
- CNAME Record: đóng vai trò như đặt một hoặc nhiều tên khác cho tên chính, có thể tạo tên mới, điều chỉnh con trỏ tới tên gốc và đặt TTL.
- MX Record: chỉ định server nào quản lý các dịch vụ email của tên miền đó.
- AAAA Record: cùng là A Record, tuy nhiên, AAA Record được sử dụng để trỏ domain đến 1 ipv6 address
- NS Record: DNS Server Records của tên miền, cho phép chỉ định Name Server cho từng tên miền phụ.
- SRV Record: là bản ghi đặc biệt trong Domain Name System, dùng để xác định port nào chạy dịch vụ nào


### 3.4. Thông điệp DNS

> Gồm có thông điệp yêu cầu và thông điệp trả lời

![DNS](https://whitehat.vn/image/xenforo_image/1489939941hinh%207%20khuon%20dang%20ban%20tin%20dns.JPG)

Ý nghĩa các trường trong thông điệp: 
- 12 byte đầu tiên là phần tiêu đề. Phần tiêu đề có 1 số trường:
  - Trường đầu tiên là định danh 16 bit cho mỗi thông điệp yêu cầu, được ghi lại vào thông điệp trả lời, cho phép client xác định được đấy là câu trả lời nào cho yêu cầu nào.
  - Có nhiều trường cờ, mỗi cờ ứng với 1 bit.
  - Cờ truy vấn (query/reply flag) xác định thông điệp là yêu cầu (0) hay là trả lời (1)
  - Cờ authoritiative được đặt trong thông điệp trả lời khi name server 1à authoriative name server của tên máy tính cần xác định địa chỉ IP
  - Cờ mong muốn đệ quy (recursive-desired query) được đặt khi client (máy tính hay name server ) mong muốn name server thực hiện truy vấn đệ quy khi nó không có bản ghi đó.
  - Cờ chấp nhận đệ quy (recursion-available flag) được đặt trong thông điệp trả lời nếu name server đó hỗ trợ đệ quy.
- Trong phần tiêu đề cũng có 4 trường số lượng, các trường này xác định số lượng các bản ghi trong 4 phần dữ liệu sau phần tiêu đề
  - Phần câu hỏi (Question session) chứa thông tin về câu hỏi được tạo ra. Nó bao gồm 1 trường tên chứa tên đang được hỏi và 1 trường kiểu xác định kiểu câu hỏi.
  - Trong thông điệp trả lời từ server name, phần trả lời (answer section) chứa các bản ghi tài nguyên cho tên được yêu cầu trước đó. Chú ý rằng mỗi bản ghi tài nguyên có 4 trường: Type (A, NS, CNAME, MX,…), Name, Value, TTL. Thông điệp trả lời có thể có nhiều bản ghi tài nguyên vì tên máy tính có thể ứng với nhiều địa chỉ IP.
  - Mục thẩm quyền (authonty section) chứa các bản ghi của các authoritative server.
  - Mục phụ trợ (additional section) chứa các bản ghi "hữu ích" khác. Có thể là 1 bản ghi kiểu A cung cấp địa chỉ IP cho mail server