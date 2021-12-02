# Mạng truyền thông và công nghệ mạng
### 1.1. Giới thiệu chung:
**Truyền thông mạng máy tính (computer communications)** là quá trình truyền dữ liệu giữa các thiết bị
- Mạng (Networking) là khái niệm kết nối các thiết bị nhằm chia sẻ thông tin. Có nhiều vấn đề liên quan:
  - Giao thức truyền thông (protocol)
  - Topo (Mô hình ghép nối mạng)
  - Địa chỉ
  - Định tuyến (Routing)
  - Tính tin cậy (reliability)
  - Khả năng liên tác (interoperability)
  - An ninh (security)
  - Chuẩn (Standard)
### 1.2. Mạng máy tính

- Là tập hợp các máy tính và các thiết bị phụ trợ sử dụng chung 1 nhóm giao thức để chia sẻ tài nguyên thông qua các phương tiện truyền thông mạng
- Các thành phần mạng: thiết bị, nút, máy tính

- Các thành phần mạng: thiết bị, nút, máy tính
- Phương tiện và các giao thức truyền thông mạng có 2 tiêu chí:
  - Khả năng liên kết (connectivity): đường truyền và kết nối vật lý
  - Ngôn ngữ (language): Bảng từ vựng cùng quy tắc truyền thông phải tuân thủ.
- Môi trường truyền thông (media): Môi trường vật lý sử dụng kết nối các thành phần mạng
  - Được chia làm 2 loại: cáp (cable) và không dây (Wireless)
- Giao thức (Protocols): là các quy tắc quy định cách thức trao đổi dữ liệu giữa các thực thể.
### 1.3. Phân loại mạng máy tính
**Phân loại mạng theo diện hoạt động:**
- Mạng cá nhân (Personal Area Network - PAN): Mạng sử dụng trong gia đình. Dễ dàng sử dụng các tài nguyên chung trong gia đình từ các vị trí khác nhau trong nhà.

![PAN](https://maychuvatly.com/wp-content/uploads/2020/12/personal-area-network-1.png)
- Mạng cục bộ (Local Area Network - LAN): Sử dụng mạng trong 1 vùng địa lý có kích thước hạn chế. Ví dụ trong một trường học có nhiều phòng học.

![LAN](https://cdn.tgdd.vn/Files/2015/01/06/596356/lan-la-gi--3.jpg)

- Mạng diện rộng (Wide Area Network - WAN): Có thể coi gồm nhiều mạng LAN khác nhau, nằm trong vùng địa lý có ban kính trên 100km. Ví dụ: thị xã, thành phố, tỉnh, quốc gia.

![WAN](https://stc.hnammobilecare.com/hcare/uploads/images/mang-wan-la-gi-phan-biet-mang-wan-va-mang-lan-11588170269.png)

- Mạng đô thị (Metropolitan Area Network - MAN): có kích thước hoạt động nằm ở giữa LAN và WAN. 1 công ty có nhiều chi nhánh thuộc 1 thành phố.

![MAN](https://vnptgroup.vn/wp-content/uploads/2020/08/khac-biet-giua-mang-lan-man-va-wan.jpg)

- Mạng toàn cầu (Global Area Network - GAN): Gồm nhiều mạng WAN. 1 công ty hoạt động xuyên quốc gia

![GAN](https://st.quantrimang.com/photos/image/2020/12/11/gan-global-area-network-1.jpg)

- Mạng lưu trữ (Storage Area Network - SAN): là mạng không đặc trưng bởi quy mô, sử dụng để kết nối các máy chủ tới hệ thống lưu trữ dữ liệu.

![SAN](https://www.ssla.co.uk/wp-content/uploads/2020/08/Storage-area-network-300x236.png)

**Phân loại mạng theo mô hình kết nối**

Topo mạng gần giống như bản đồ đường phố, mô tả chi tiết cách thức kết nối các nút mạng và các đường truyền
- Mô hình point-to-point: Mỗi nút chỉ có thể liên lạc với nút liền kề, có nhiều nút.
  - Star: Có 1 hub xử lý trung tâm, có trách nhiệm truyền tin cho tất cả các nút. Hub hỏng thì hệ thống sụp đổ
  - Tree: Mô hình phân cấp, các cấp liên hệ với nhau qua các nút
- Mô hình Broadcast: Các nút dùng chung một kênh truyền thông.
  - Topo mạng: Bus, Ring, vệ tinh.
**Phân loại mạng theo kiểu chuyển**
- Mạng chuyển mạch ảo (virtual circuit-switched): thiết lập mạch vật lý giữa nút nguồn với đích trước khi chuyển dữ liệu thực sự.
- Mạng chuyển mạch gói (packet-switched): Chuyển các packet đến thiết bị trung gian (Switch), sau đó căn cứ vào địa chỉ đích chuyển vào các thiết bị kế tiếp.
### 1.4. Địa chỉ mạng, định tuyến, tính tin cậy, tính liên tác và an ninh mạng
**Địa chỉ:** là duy nhất để định danh các nút mạng

**Routing - Định tuyến:** xác định đường mà dữ liệu sẽ đi qua từ nút nhận đến nút gửi, được thực hiện bởi router

**Tính tin cậy:** Tính toàn vẹn dữ liệu, dữ liệu nhận giống với dữ liệu gửi

**Tính liên tác:** Các thiết bị đa hãng có thể giao tiếp được với nhau

**An ninh:** Bảo vệ mọi thứ trong mạng gồm dữ liệu, phương tiện truyền thông, các thiết bị. Còn bao gồm chức năng quản trị, công cụ kỹ thuật, thiết bị mã hoá, sản phẩm kiểm soát truy cập mạng
### 1.5. Chuẩn mạng
- Chuẩn chính thức(De jure standard)
- Chuẩn thực tế(De facto standard)
- Chuẩn riêng của hãng
- Chuẩn hiệp hội 

