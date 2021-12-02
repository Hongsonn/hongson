# I. Giao thức tầng ứng dụng:
### 1.1. Giao thức:
- Mô hình Client/Server: Sử dụng các giao thức phổ biến: HTTP, Telnet, FTP, SMTP,..
- Truyền thông giữa các tiến trình: 2 tiến trình liên lạc với nhau bằng cách gửi và nhận thông điệp qua socket của chúng.
- Địa chỉ tiến trình: xác định qua 2 thành phần: tên, địa chỉ máy tính và định danh xác định tiến trình trên máy tính nhận
- Chương trình giao tiếp người dùng (user agent): giao diện giữa người dùng và ứng dụng mạng
### 1.2. Các yêu cầu ứng dụng:
- Mất mát dữ liệu (Data loss): tuy thuộc và loại dữ liệu gửi đi để có thể chấp nhận sự mất mát dữ liệu.
- Băng thông (Bandwith): Tùy thuộc và yêu cầu của người sử dụng để có thể cung cấp đủ số băng thông, không gây ra ảnh hưởng tới người sử dụng
- Thời gian (timing)

### 1.3. Dịch vụ của các giao thức giao vận Internet
Internet cung cấp hai giao thức giao vận cho tầng ứng dụng: UDP và TCP
**Giao thức TCP:** là hướng kết nối và cung cấp dịch vụ truyền dữ liệu tin cậy
- Dịch vụ hướng nối (connection oriented):
  - Quá trình "bắt tay" cho phép client và server sẵn sàng xử lý các gói dữ liệu. 
  - Kết nối 2 chiều (Song công - Full duplex): cho phép đồng thời gửi và nhận thông điệp.
- Dịch vụ giao vận tin cậy:
  - Đảm bảo truyền tất cả dữ liệu một cách chính xác
  - Không đảm bảo về tốc độ truyền và độ trễ.
**Giao thức UDP:** với mô hình phục vụ tối thiểu
- Không hướng nối, không cung cấp dịch vụ truyền tin cậy
- Không đảm bảo thông điệp sẽ đến được cổng tiến trình nhận. 
- Thông điệp tới đích có thể không đúng thứ tự
- Không có cơ chế kiểm soát tắc nghẽn
### 1.4. Một số ứng dụng phổ biến: Web, truyền file, thư điện tử, DNS.
# II. Wordld wide web: HTTP
### 2.1. Tổng quan về HTTP:
> Hyper Text Transfer Protocol (HTTP) - giao thức tầng ứng dụng của Web
- Các vấn đề liên quan:
  - Trang Web (Webpage - hay còn gọi là 1 tập tin) chứa các đối tượng (Object).\
  - Trình duyệt (Browser): chương trình giao tiếp người dùng của ứng dụng Web cho phép hiển thị trang Web.
  - HTTP sử dụng TCP làm giao thức ở tầng giao vận phía dưới.
  - HTTP client và HTTP server đều truy cập tới TCP thông qua socket. TCP chịu trách nhiệm về việc chuyển và tránh mất mát dữ liệu.

### 2.2. Kết nối liên tục và không liên tục (persistent / nonpersistent)
HTTP 1.0 sử dụng kết nối không liên tục. HTTP 1.1 là kết nối liên tục
**Kết nối không liên tục:** Sau khi gửi một đối tượng thì server sẽ đóng kết nối TCP lại. Nếu có nhiều yêu cầu thì sẽ cần phải có nhiều kết nối TCP được thiết lập
- Khi kết nối được tạo ra thì cần phải có vùng đệm TCP (buffer) cũng như lưu giữ các biến TCP cả phía client và server. Tạo gánh nặng cho server khi có qua nhiều yêu cầu 1 lúc.
**Kết nối liên tục:** Client gửi yêu cầu liên tiếp thì server sẽ trả lại các đối tượng nối tiếp nhau trên 1 kết nối TCP. Chỉ đóng khi không sử dụng trong 1 khoảng thời gian nhất định.

### 2.3. Khuôn dạng thông điệp HTTP
> Thông điệp yêu cầu và thông điệp trả lời
**Thông điệp yêu cầu HTTP (HTTP request message)** 
- Chứa yêu cầu và phương thức yêu cầu, phiên bản của giao thức HTTP
- Chứa tên tên host. Đang sử dụng kết nối liên tục hay không liên tục
- Sử dụng trình duyệt nào
- Ngôn ngữ mà người dùng yêu cầu

**Thông điệp trả lời (HTTP Response massage)**
- Dòng trạng thái (status line): chứa phiên bản của giao thức, mã trạng thái, thông điệp được trả lời.
  - 200 OK: đã được đáp ứng và dữ liệu nằm trong thông điệp
  - 301 Moved permanetly: đối tượng được chuyển tới URL mới
  - 400 Bad Request: Server không hiểu yêu cầu từ client
  - 404 not found: đối tượng đã bị xóa
  - 505 HTTP version not support: Server không hỗ trợ giao thức của client

- Dòng tiêu đề: có thể chứa trạng thái connect, thời gian,connect lenght, connect type
- Phần thân (Entity body): chứa đối tượng được yêu cầu 

### 2.4. Tương tác giữa người dùng và Hrver-server
> HTTP có 2 cơ chế để server phân biệt người dùng: Authentication và cookies
**Authentication (Kiểm chứng)**
- Người dùng cung cấp tên và mật khẩu để có thể xác minh thân phận với phía server để có thể lấy được dữ liệu yêu cầu
- HTTP phân biệt người dùng khác lỏng lẻo và không khó để vượt qua

**Cookie** là kỹ thuật để ghi lại dấu vết của người truy cập
- Không cần sử dụng tên và mật khẩu
- Xác định user bằng trường Set-cookie
- Được sử dụng để ghi nhớ các hoạt động người dùng

### 2.5. GET có điều kiện (Conditional GET)




