# I. Các ứng dụng theo kiến trúc ngang hàng

- Ứng dụng Peer - to - Peer (P2P) có các đặc điểm sau:
  - Chia sẻ các tài nguyên và dịch vụ phân tán: các nút thành viên vừa đóng vai trò client và vừa đóng vai trò server.
  - Không tập trung: Truyền thông các nút diễn ra trực tiếp, các nút bình đẳng với nhau, không ai chi phối ai
  - Tự trị: Mỗi nút mạng tự quyết định khi nào tham gia vào mạng và mức độ đóng góp chia sẻ cho cộng đồng.
- Các ứng dụng P2P có thể phân loại vào 3 nhóm sau đây:
  - Nhắn tin tức thì (Instant messaging)
  - Chia sẻ file
  - Tính toán mạng lưới

### 1.1. Nhắn tin tức thì (Instant messaging - IM)

- **Chức năng của IM**
  - Dịch vụ hiển thị thông tin (Presence Service): là dịch vụ quan trọng nhất trong hệ thống IM, xác định có thể liên lạc được với đối tượng đó hay không và trạng thái của đối tượng đó. Ngoài ra còn cung cấp cơ chế đảm bảo tính riêng tư.
  - Dịch vụ chuyển phát tin nhắn giữa những người sử dụng trên mạng IM
  - Các dịch vụ bổ trợ (liệt kê trong RFC2778 và RFC2779)
- **Các thành phần của IM:**
  - IM Server: 
   - Cung cấp các dịch vụ như hiển thị thông tin, cảnh báo, đăng ký tài khoản, nhắn tin
   - Có thể gồm nhiều server cùng làm việc
   - Truyền thông giữa các server thường "trong suốt"
  - IM Client: phần mềm client là điểm giao tiếp của người sử dụng với mạng IM. Sau khi cài đặt thì có thể kết nối và sử dụng các dịch vụ do bên IM server cung cấp

- **Mô hình kết nối**
  - Client - Server hay kiểu tập trung: Tất cả thông tin trao đổi đều đi qua server
  - Peer - to - Peer hay kiểu phân tán: Dữ liệu được trao đổi trực tiếp giữa các client (không đi qua server)

-**Cấu hình Server** để tằng khả năng mở rộng, hệ thống IM có thể sử dụng 1 hay nhiều Server
  - Kiến trúc 1 Server: Mọi dịch vụ IM đểu thực hiện trên 1 server duy nhất. Kiến trúc này dễ bảo trì, tăng cường khả năng bảo mật, nhưng khó mở rộng hệ thống
  - Kiến trúc nhiều Server. Server được chia làm 2 loại: Nhân bản và Dịch vụ phân tán.
   - Nhân bản: Mỗi server có thể thực hiện được tất cả các dịch vụ của IM. Các server giống hệt nhau và được kết nối với nhau.
   - Dịch vụ phân tán: Các dịch vụ khác nhau được cài đặt trên các server khác nhau.


### 1.2. Kiến trsuc hệ thống MSN:
> Hai hệ thống IM được sử dụng rộng rãi nhất hiện nay AIM và MSN.

**MSN Protocol (MSNP):**
- Server và Client trong mạng MSN trao đổi các lệnh được mã hóa theo chuẩn UTF-8 qua TCP socket
- Có 3 kiểu server: Dispatch Server (DS), Notification Server (NS), Switchboard (SS)
  - Nhiệm vụ của DS: thỏa thuận sử dụng phiên bản giao thức nào với client, sau đó xác định server NS nào kiểm soát người dùng. Sau khi xác định địa chỉ NS được chuyển cho client
  - NS là thành phần quan trọng nhất của mạng IM: sau khi đăng nhập thành công, NS và client phải đồng bộ với nhau về trạng thái cũng như trao đổi thông tin dị bộ. Yêu càu được làm việc với SS.
  - SS là thành phần trợ giúp client tạo các phiên hội thoại, chuyển tin nhắn giữa các client.

### 1.3. Kiến trúc chia sẻ file ngang hàng Gnutella

**Kiến trúc Gnutella:** gồm các nút ngang hàng nhau (peer), có thể đôi một kết nối trực tiếp với nhau.
- Các nút này gọi là servent, vì vừa đóng cai trò client (khi yêu cầu nút khác) lẫn server (khi đáp ứng yêu cầu nút khác). Các nút có bản ghi thông tin chỉ mục về toàn bộ (hoặc 1 phần) hệ thống
- Muốn gia nhập mạng Gnutella, nút phải xác định địa chỉ một nút đã nằm trong mạng Gnutella. 

**Khôn dạng thông điệp của giao thức Gnutella** được chia thành 5 kiểu: Ping, Pong, Query, Queryhit, Push
- Ping: phát hiện các nút trên mạng. Mỗi nút nhận được thông điệp Ping có thể trả lời bằng một hoặc nhiều thông điệp Pong
- Pong: thông điệp trả lời cho Ping, chứa địa chỉ và các thông tin của nút
- Query: là thông điệp phục vụ mục đích tìm kiếm trên mạng. Nếu nhận được truy vấn mà có dữ liệu đáp ứng được, nút gửi thông điệp QueryHit trả lời
- QueryHit: thông điệp trả lời Query. Cung cấp các thông tin cần thiết để phía tìm kiếm có thể tải file
- Push: Được các nút đằng sau firewall sử dụng khi muốn chuyển dữ liệu cho nút khác

**Các thông tin tiêu đề** 

![Gnutella](https://scontent.xx.fbcdn.net/v/t1.15752-9/s526x296/263534065_618067522676474_3179152101739293602_n.png?_nc_cat=110&ccb=1-5&_nc_sid=aee45a&_nc_ohc=iZdBwFef9VUAX_5KSpk&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=4d32a91f3a77a019c06e215c59f56447&oe=61D067E5)

Hình minh hoạ tiêu đề gồm 5 trường của một thông điệp Gnutella tổng quát:
- *Descriptor ID* (Định danh thông điệp) xác định duy nhất một thông điệp trên mạng
- *Payload Descriptor* (Dữ liệu) Xác định thông điệp (0x00 cho Ping, 0x01 cho Pong, 0x40 cho Push, 0x80 cho Query, and 0x81 cho QueryHit).
- *TTL* Số chặng mà thông điệp có thể lan toả trên mạng.
- *Hops* Số chặng mà thông điệp đã đi qua (tổng của giá trị này với giá trị TTL là giá trị TTL khởi đầu) 
- *Payload Length* Độ dài của trường dữ liệu

**Mô tả trường dữ liệu**
Có năm kiểu trường dữ liệu khác nhau (ứng với 5 kiểu thông điệp)

1. Ping: Thông điệp Ping không có dữ liệu 
2. Pong: 
![pong](https://scontent.xx.fbcdn.net/v/t1.15752-9/263498018_433687718287711_5136551088334946907_n.png?_nc_cat=111&ccb=1-5&_nc_sid=aee45a&_nc_ohc=t67FFg0KN80AX-v3L7a&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=7689356244221bf3033c4951c6d7c6b1&oe=61D28DED)

Dữ liệu trong thông điệp Pong có bốn phần. Thông điệp Pong được gửi để trả lời thông điệp Ping.
- *Port*: số hiệu cổng Host chấp nhận kết nối
- *IP Address: địa chỉ IP của nút
- *#Files Shared*: Số lượng file mà host chia sẻ
- *#Kilobytes Shared*: Số lượng KB host đã chia sẻ

3.Query

