# I. DNS Records
- Là các hướng dẫn nằm trong máy chủ DNS có thẩm quyền và cung cấp thông tin về miền bao gồm địa chỉ IP nào được liên kết với miền đó và cách xử lý các yêu cầu cho miền đó. Các bản ghi này bao gồm một loạt các tệp văn bản được viết bằng cú pháp DNS. Cú pháp DNS chỉ là một chuỗi ký tự được sử dụng làm lệnh cho máy chủ DNS phải làm gì. Tất cả các bản ghi DNS cũng có ' TTL ', viết tắt của thời gian tồn tại và cho biết tần suất máy chủ DNS sẽ làm mới bản ghi đó.

# II. Các loại bản ghi DNS phor biến
### 1. **A record:**
- "A" là viết tắt của "address" và đây là loại bản ghi DNS cơ bản nhất : nó chỉ ra địa chỉ IP của một miền nhất định.

- Bản ghi A chỉ giữ địa chỉ IPv4. Nếu một trang web có địa chỉ IPv6, thay vào đó nó sẽ sử dụng bản ghi "AAAA".

- Ví dụ về A record:

|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|A|192.0.2.1|14400|

Biểu tượng "@" trong ví dụ này cho biết đây là bản ghi cho miền gốc và giá trị "14400" là TTL (thời gian tồn tại) , được liệt kê bằng giây. TTL mặc định cho bản ghi A là 14.400 giây. Điều này có nghĩa là nếu một bản ghi A được cập nhật, thì phải mất 240 phút (14.400 giây) để có hiệu lực.

Còn đối với DNS record, TTL là một giá trị xác định, dùng để chỉ thời gian máy chủ bộ nhớ đệm DNS có thể ghi nhớ và lưu trữ một bản ghi DNS trước khi tiếp nhận và nhận bản ghi mới từ máy chủ DNS chính.

### 2. **AAAA Record**
- Bản ghi DNS AAAA khớp tên miền với địa chỉ IPv6. Bản ghi DNS AAAA chính xác giống như bản ghi DNS A , ngoại trừ việc chúng lưu trữ địa chỉ IPv6 của miền thay vì địa chỉ IPv4 của miền đó.

- IPv6 là phiên bản mới nhất của Giao thức Internet (IP) . Một trong những điểm khác biệt quan trọng giữa IPv6 và IPv4 là địa chỉ IPv6 dài hơn địa chỉ IPv4. Internet đang cạn kiệt địa chỉ IPv4, cũng như chỉ có rất nhiều số điện thoại khả thi cho một mã vùng nhất định. Nhưng địa chỉ IPv6 cung cấp nhiều hoán vị hơn theo cấp số nhân và do đó có thể có nhiều địa chỉ IP hơn .

- Ví dụ về bản ghi AAAA:

|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|AAAA|2001: 0db8: 85a3: 0000: 0000: 8a2e: 0370: 7334|14400|

### 3. **CNAME record:**
- ‘canonical name’ (CNAME) record được sử dụng thay cho bản ghi A, khi domain hoặc subdomain là 1 alias của 1 tên miền khác. Tất cả các bản ghi CNAME phải trỏ đến một miền, không bao giờ tới một địa chỉ IP.

- Ví dụ: giả sử blog.example.com có ​​bản ghi CNAME với giá trị là 'example.com' (không có 'blog'). Điều này có nghĩa là khi máy chủ DNS truy cập các bản ghi DNS cho blog.example.com, nó thực sự kích hoạt một tra cứu DNS khác tới example.com, trả về địa chỉ IP của example.com thông qua bản ghi A của nó. Trong trường hợp này, chúng tôi sẽ nói rằng example.com là tên chuẩn (hoặc tên thật) của blog.example.com.

Thông thường, khi các trang web có tên miền phụ như blog.example.com hoặc shop.example.com, các tên miền phụ đó sẽ có bản ghi CNAME trỏ đến tên miền gốc (example.com). Bằng cách này nếu địa chỉ IP của máy chủ thay đổi, chỉ bản ghi DNS A cho miền gốc cần được cập nhật và tất cả các bản ghi CNAME sẽ tuân theo bất kỳ thay đổi nào được thực hiện đối với máy chủ.

- Bản ghi CNAME chỉ trỏ máy khách đến cùng địa chỉ IP với miền gốc. Khi máy khách truy cập địa chỉ IP đó, máy chủ web sẽ vẫn xử lý URL tương ứng. Vì vậy, ví dụ: blog.example.com có ​​thể có CNAME trỏ đến example.com, hướng khách hàng đến địa chỉ IP của example.com. Nhưng khi máy khách thực sự kết nối với địa chỉ IP đó, máy chủ web sẽ xem URL, thấy rằng đó là blog.example.com và phân phối trang blog chứ không phải trang chủ.

- Ví dụ CNAME record:

|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|CNAME|là 1 alias của example.com|32600|

- **CNAME record trỏ đến bản ghi CNAME record khác**:

Việc trỏ một bản ghi CNAME đến một bản ghi CNAME khác là không hiệu quả vì nó yêu cầu nhiều lần tra cứu DNS trước khi miền có thể được tải - điều này làm chậm trải nghiệm người dùng - nhưng hoàn toàn có thể. Ví dụ: blog.example.com có ​​thể có bản ghi CNAME trỏ đến bản ghi CNAME của www.example.com, bản ghi này sau đó trỏ đến bản ghi A của example.com.

  - CNAME cho blog.example.com:

|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|CNAME|là 1 alias của www.example.com|32600|

  - Điểm trỏ đến CNAME cho www.example.com:

|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|CNAME|là 1 alias của example.com|32600|

  Cấu hình này thêm một bước bổ sung cho quá trình tra cứu DNS và nên tránh nếu có thể. Thay vào đó, các bản ghi CNAME cho cả blog.example.com và www.example.com phải trỏ trực tiếp đến example.com.

- Những hạn chế đối với với việc sử dụng CNAME record:

Bản ghi MX và NS không thể trỏ đến bản ghi CNAME; họ phải trỏ đến bản ghi A (đối với IPv4) hoặc bản ghi AAAA (đối với IPv6). Bản ghi MX là bản ghi trao đổi thư hướng email đến máy chủ thư. Bản ghi NS là bản ghi 'name server' và cho biết máy chủ DNS nào có thẩm quyền cho miền đó.

### 4. MX record

Bản ghi DNS 'mail exchange' (MX) chuyển hướng email đến mail server. Bản ghi MX cho biết cách gửi thư email theo Giao thức truyền thư đơn giản (SMTP, giao thức tiêu chuẩn cho tất cả email). Bản ghi MX luôn trỏ đến 1 tên miền khác.

- Ví dụ về MX record:

|example.com|loại bản ghi|Ưu tiên|giá trị|TTL|
|-|-|-|-|-|
|@|MX|10|mailhost1.example.com|45000|
|@|MX|20|mailhost2.example.com|45000|

- Các số 'ưu tiên' trước tên miền cho các bản ghi MX này biểu thị ưu tiên; giá trị 'ưu tiên' thấp hơn được ưu tiên. Máy chủ sẽ luôn thử mailhost1 trước vì 10 thấp hơn 20. Do lỗi gửi thư, máy chủ sẽ mặc định là mailhost2.

- Dịch vụ email cũng có thể định cấu hình bản ghi MX này để cả hai máy chủ có mức độ ưu tiên ngang nhau và nhận được một lượng thư bằng nhau:

|example.com|loại bản ghi|Ưu tiên|giá trị|TTL|
|-|-|-|-|-|
|@|MX|10|mailhost1.example.com|45000|
|@|MX|10|mailhost2.example.com|45000|

Cấu hình này cho phép nhà cung cấp email cân bằng tải giữa hai máy chủ.

- **Quá trình truy vấn bản ghi MX**

Phần mềm Message transfer agent (MTA) chịu trách nhiệm truy vấn các bản ghi MX. Khi người dùng gửi email, MTA sẽ gửi một truy vấn DNS để xác định các máy chủ thư cho người nhận email. MTA thiết lập kết nối SMTP với các máy chủ thư đó, bắt đầu với các miền ưu tiên (trong ví dụ đầu tiên ở trên, mailhost1).

- **Bản ghi MX dự phòng**

Bản ghi MX dự phòng chỉ là bản ghi MX dành cho máy chủ thư có giá trị 'ưu tiên' cao hơn (có nghĩa là mức ưu tiên thấp hơn), để trong các trường hợp bình thường, thư sẽ đi đến các máy chủ được ưu tiên hơn. Trong ví dụ đầu tiên ở trên, mailhost2 sẽ là máy chủ 'sao lưu' vì lưu lượng email sẽ được mailhost1 xử lý miễn là nó được thiết lập và chạy

- **Bản ghi MX không thể để trỏ đến CNAME**

Bản ghi CNAME được sử dụng để tham chiếu alias domain thay vì tên trực tiếp của nó. Bản ghi CNAME thường trỏ đến bản ghi A (trong IPv4) hoặc bản ghi AAAA (trong IPv6) cho miền đó. Tuy nhiên, bản ghi MX phải trỏ trực tiếp đến bản ghi A hoặc bản ghi AAAA của máy chủ

### 5. TXT record:
- Bản ghi DNS 'text' (TXT) cho phép administrator nhập text vào DNS. Bản ghi TXT ban đầu được dự định là nơi lưu trữ các ghi chú mà con người có thể đọc được. Tuy nhiên, bây giờ cũng có thể đưa một số dữ liệu mà máy có thể đọc được vào bản ghi TXT. Một miền có thể có nhiều bản ghi TXT.

- Ví dụ TXT record:

|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|TXT|not spammy|32600|

Ngày nay, hai trong số những cách sử dụng quan trọng nhất đối với bản ghi DNS TXT là ngăn chặn thư rác email và xác minh quyền sở hữu miền, mặc dù ban đầu bản ghi TXT không được thiết kế cho những mục đích sử dụng này.

- Các loại dữ liệu trong TXT Record:

Các chuỗi văn bản đi trong trường giá trị, có thể là bất kì văn bản nào mà người quản trị muốn liên kết. Sẽ có giới hạn độ lớn của bản ghi và số lượng bản ghi có thể lưu trữ.

- Định dạng lưu giữ liệu trong bản ghi TXT "atttribute=value"

|example.com|loại bản ghi|giá trị|
|-|-|-|-|
|@|TXT|"print=Ipr5" |

- Bản ghi TXT giúp ngăn chặn thư rác
- Bản ghi TXT giúp xác minh quyền sở hữu miền

Bằng cách tải lên bản ghi TXT mới với thông tin cụ thể được bao gồm hoặc chỉnh sửa bản ghi TXT hiện tại, quản trị viên có thể chứng minh họ kiểm soát miền đó. Nhà cung cấp công cụ hoặc đám mây có thể kiểm tra bản ghi TXT và thấy rằng nó đã được thay đổi theo yêu cầu. Điều này giống như khi người dùng xác nhận địa chỉ email của họ bằng cách mở và nhấp vào một liên kết được gửi đến email đó, chứng minh rằng họ sở hữu địa chỉ đó.

### 6. NS record:

- NS là viết tắt của 'name server' và bản ghi máy chủ định danh cho biết máy chủ DNS nào có thẩm quyền cho miền đó (tức là máy chủ nào chứa các bản ghi DNS thực tế ). Về cơ bản, các bản ghi NS cho Internet biết nơi cần đến để tìm ra địa chỉ IP của miền . Một miền thường có nhiều bản ghi NS có thể chỉ ra các máy chủ định danh chính và dự phòng cho miền đó. Nếu không có các bản ghi NS được định cấu hình đúng, người dùng sẽ không thể tải một trang web hoặc ứng dụng.

- Ví dụ: 
|example.com|loại bản ghi|giá trị|TTL|
|-|-|-|-|
|@|NS|ns1.exampleserver.com|21600|

Lưu ý bản ghi NS không bao giờ có thể trỏ đến CNAME

- Một nameserver là 1 máy chủ lưu trữ tất cả các bản ghi DNS cho một miền, bao gồm bản ghi A , bản ghi MX hoặc bản ghi CNAME.
- Hầu hết tất cả các miền đều dựa vào nhiều máy chủ định danh để tăng độ tin cậy

- **Cập nhật và thay đổi bản ghi NS**
  - Quản trị viên miền nên cập nhật bản ghi NS của họ khi họ cần thay đổi máy chủ định danh miền
  - Quản trị viên cũng có thể muốn cập nhật bản ghi NS của họ nếu họ muốn một miền phụ sử dụng các máy chủ định danh khác nhau.
  - Khi các bản ghi NS được cập nhật, có thể mất vài giờ để các thay đổi được sao chép trong toàn bộ DNS.

### 7. SOA record:

- Bản ghi DNS 'start of Authority' (SOA) lưu trữ thông tin quan trọng về miền hoặc vùng như địa chỉ email của quản trị viên, khi miền được cập nhật lần cuối và máy chủ sẽ đợi bao lâu giữa các lần làm mới.
- Tất cả các vùng DNS cần một bản ghi SOA để tuân theo các tiêu chuẩn IETF. Các bản ghi SOA cũng rất quan trọng đối với việc chuyển vùng.
- Ví dụ

![a](https://f5-zpcloud.zdn.vn/1317447237426704338/cc2a8415042cce72973d.jpg)

Giá trị 'RNAME' ở đây đại diện cho địa chỉ email của quản trị viên, có thể gây nhầm lẫn vì nó thiếu dấu '@', nhưng trong bản ghi SOA, admin.example.com tương đương với admin@example.com.

- **zone serial number**:
  - Là vùng kiểm soát không gian tên.Một vùng có thể bao gồm một tên miền duy nhất, một miền và nhiều miền phụ hoặc nhiều tên miền.
  - serial là số phiên bản của bản ghi SOA.

- **Các phần khác của bản ghi SOA**:
  - MNAME: Đây là tên của máy chủ định danh chính cho khu vực. Máy chủ thứ cấp duy trì các bản ghi DNS của vùng trùng lặp nhận các bản cập nhật cho vùng từ máy chủ chính này.
  - REFRESH: Khoảng thời gian (tính bằng giây) máy chủ phụ nên đợi trước khi yêu cầu máy chủ chính cung cấp bản ghi SOA để xem nó đã được cập nhật chưa.
  - RETRY: Khoảng thời gian máy chủ phải đợi để yêu cầu một máy chủ định danh chính không phản hồi để cập nhật lại
  - EXPIRE: Nếu máy chủ phụ không nhận được phản hồi từ máy chủ chính trong khoảng thời gian này, nó sẽ ngừng phản hồi các truy vấn cho khu vực.

- **Chuyển vùng**: 

Chuyển vùng DNS là quá trình gửi dữ liệu bản ghi DNS từ máy chủ định danh chính đến máy chủ định danh phụ. Bản ghi SOA được chuyển đầu tiên. Số sê-ri cho máy chủ phụ biết liệu phiên bản của nó có cần được cập nhật hay không.

### 8. SRV record:
- "service" (SRV) chỉ định máy chủ và cổng cho các dịch vụ cụ thể như voice over IP (VoIP), nhắn tin tức thì. Hầu hết các bản ghi DNS khác chỉ xác định một máy chủ hoặc một địa chỉ IP , nhưng các bản ghi SRV cũng bao gồm một cổng tại địa chỉ IP đó. Một số giao thức Internet yêu cầu sử dụng các bản ghi SRV để hoạt động.

- **Bản ghi SRV chứa các thông tin:**

![a](https://f4-zpcloud.zdn.vn/4593885691423684527/dc155f3ea7076d593416.jpg)

*là protocol
**Domain name

  - Định dạng của SRV: 

  ```
  _service._proto.name. TTL class type of record priority weight port target.
  ```

  - Bản ghi mẫu có dạng:

  ```
  _xmpp._tcp.example.com. 86400 IN SRV 10 5 5223 server.example.com.
  ```

  - Bản ghi SRV phải trỏ đến bản ghi A (trong IPv4) hoặc bản ghi AAAA (trong IPv6).

- **Sự khác biệt giữa độ ưu tiên và trọng số**

Các máy chủ có độ ưu tiên thấp hơn, sẽ nhận được nhiều lưu lượng hơn. Nếu các máy chủ có cùng dộ ưu tiên thì ta sẽ xét đến trọng số. Trọng số càng lớn thì càng nhận được nhiều lưu lượng truy cập

### 9. PTR record

- "pointer record" (PTR) cung cấp địa chỉ IP được liên kết với tên miền.
- Bản ghi PTR được sử dụng trong reverse DNS lookups. Khi người dùng cố gắng truy cập tên miền trong trình duyệt của họ, tra cứu DNS sẽ xảy ra, khớp tên miền với địa chỉ IP. Tra cứu DNS ngược ngược lại với quy trình này: đó là một truy vấn bắt đầu bằng địa chỉ IP và tra cứu tên miền.

- **Lưu trữ**:
  - **Trong địa chỉ IPv4:** Tong khi các bản ghi DNS A được lưu trữ dưới tên miền nhất định, các bản ghi DNS PTR được lưu trữ theo địa chỉ IP - đã đảo ngược và có thêm ".in-addr.arpa". Ví dụ: bản ghi PTR cho địa chỉ IP 192.0.2.255 sẽ được lưu trữ trong "255.2.0.192.in-addr.arpa".
  - "in-addr.arpa" phải được thêm vì các bản ghi PTR được lưu trữ trong miền cấp cao nhất .arpa trong DNS. .arpa là một miền được sử dụng chủ yếu để quản lý cơ sở hạ tầng mạng và nó là tên miền cấp cao nhất đầu tiên được xác định cho Internet.
  - in-addr.arpa là không gian tên trong .arpa để tra cứu DNS ngược trong IPv4.

  - **Trong IPv6**:

  Địa chỉ IPv6 được xây dựng khác với địa chỉ IPv4 và các bản ghi IPv6 PTR tồn tại trong một không gian tên khác bên trong .arpa. Bản ghi IPv6 PTR được lưu trữ dưới địa chỉ IPv6, được đảo ngược và chuyển đổi thành các phần bốn bit (trái ngược với các phần 8 bit, như trong IPv4), cộng với ".ip6.arpa".

  ![a](https://f5-zpcloud.zdn.vn/8190486255333254231/a12b41ec70d4ba8ae3c5.jpg)

  - **Một số mục đích sử dụng của PTR**:
    - Chống thư rác: Một số bộ lọc chống thư rác sử dụng DNS ngược để kiểm tra tên miền của địa chỉ email và xem liệu các địa chỉ IP liên kết có khả năng được sử dụng bởi các máy chủ email hợp pháp hay không.
    - Khắc phục sự cố gửi email: Vì các bộ lọc chống thư rác thực hiện các kiểm tra này, các vấn đề gửi email có thể do bản ghi PTR bị định cấu hình sai hoặc bị thiếu. Nếu một miền không có bản ghi PTR hoặc nếu bản ghi PTR chứa miền sai, các dịch vụ email có thể chặn tất cả các email từ miền đó.
    - Ghi nhật ký: Nhật ký hệ thống thường chỉ ghi lại địa chỉ IP; tra cứu DNS ngược có thể chuyển những tên miền này thành tên miền cho nhật ký mà con người dễ đọc hơn.

# III. Một số bản ghi DNS ít được sử dụng:

1. AFSDB record - Bản ghi này được sử dụng cho các khách hàng của Andrew File System (AFS) do Carnegie Melon phát triển. Bản ghi AFSDB có chức năng tìm các ô AFS khác.

2. APL record - "address prefix list" là bản ghi thử nghiệm chỉ định danh sách các dải địa chỉ.

3. CAA record - "certification authority authorization" nó cho phép chủ sở hữu miền nêu rõ tổ chức phát hành chứng chỉ nào có thể cấp chứng chỉ cho miền đó. Nếu không có bản ghi CAA nào tồn tại, thì bất kỳ ai cũng có thể cấp chứng chỉ cho miền. Các bản ghi này cũng được kế thừa bởi các miền phụ.

4. DNSKEY record - chứa khóa công khai được sử dụng để xác minh Domain Name System Security Extension (DNSSEC) (Phần mở rộng bảo vệ hệ thống tên miền)

5. CDNSKEY record - Đây là bản sao con của bản ghi DNSKEY

6. CERT record - "certificate record" lưu trữ các chứng chỉ khóa công khai

7. DCHID record - "DHCP Identifier" lưu trữ thông tin cho Giao thức cấu hình máy chủ động (DHCP), một giao thức mạng được tiêu chuẩn hóa được sử dụng trên mạng IP

8. DNAME record - "delegation name" tạo domain alias, domain alias sẽ chuyển hướng tất cả cá miền phụ. Ví dụ: nếu chủ sở hữu của 'example.com' đã mua tên miền 'website.net' và cung cấp cho nó một bản ghi DNAME trỏ đến 'example.com', thì con trỏ đó cũng sẽ mở rộng đến 'blog.website.net' và bất kỳ các miền phụ khác.

9. HIP record - "Host identity protocol" một cách để phân tách các vai trò của địa chỉ IP; bản ghi này được sử dụng thường xuyên nhất trong mobile computing.

10. IPSECKEY record - hoạt động với (IPSEC) , một khung giao thức bảo mật đầu cuối và một phần của Bộ Giao thức Internet (TCP / IP) .

11. LOC record - "location" chứa thông tin địa lý cho một miền ở dạng tọa độ kinh độ và vĩ độ.

12. NAPTR record - "name authority pointer" có thể được kết hợp với bản ghi SRV để tạo động các URI để trỏ đến dựa trên một biểu thức chính quy.

13. NSEC record - "next secure" à một phần của DNSSEC và nó được sử dụng để chứng minh rằng bản ghi tài nguyên DNS được yêu cầu không tồn tại.

14. RRSIG record - "resource record signature" là bản ghi để lưu trữ các chữ ký điện tử được sử dụng để xác thực bản ghi theo DNSSEC.

15. RP record - "responsible person" nó lưu trữ địa chỉ email của người chịu trách nhiệm về miền.

16. SSHFP record - "SSH public key fingerprints" lưu trữ SSH public key.




