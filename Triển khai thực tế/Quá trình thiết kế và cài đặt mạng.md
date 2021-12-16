# Quá trình xây dựng thiết kế và cài đặt mạng:

Gồm có các giai đoạn:
- Thu thập yêu cầu của khách hàng (công ty, xí nghiệp có yêu cầu xây dựng mạng).
- Phân tích yêu cầu
- Thiết kế giải pháp mạng
- Cài đặt mạng
- Kiểm thử
- Bảo trì mạng

### Thu thập yêu cầu của khách hàng
- Mục đích của giai đoạn này là nhằm xác định mong muốn của khách hàng trên mạng mà chúng ta sắp xây dựng. Những câu hỏi cần được trả lời trong giai đoạn này là:
  - Bạn thiết lập mạng để làm gì? sử dụng nó cho mục đích gì?
  - Các máy tính nào sẽ được nối mạng?
  - Những người nào sẽ được sử dụng mạng, mức độ khai thác sử dụng mạng của từng người / nhóm người ra sao?
  - Trong vòng 3-5 năm tới bạn có nối thêm máy tính vào mạng không, nếu có ở đâu, số lượng bao nhiêu ?

### Phân tích yêu cầu

- Khi đã có được yêu cầu của khách hàng, bước kế tiếp là ta đi phân tích yêu cầu để xây dựng bảng “Đặc tả yêu cầu hệ thống mạng”, trong đó xác định rõ những vấn đề sau:
  - Những dịch vụ mạng nào cần phải có trên mạng ? (Dịch vụ chia sẻ tập tin, chia sẻ máy in, Dịch vụ web, Dịch vụ thư điện tử, Truy cập Internet hay không?, ...)
  - Mô hình mạng là gì? (Workgoup hay Client / Server? ...)
  - Mức độ yêu cầu an toàn mạng.
  - Ràng buộc về băng thông tối thiểu trên mạng.

### Thiết kế giải pháp mạng:
Việc lựa chọn thiết kế trong tiến trình xây dựng hệ thống mạng phụ thuộc vào nhiều yếu tố:
- Kinh phí dành cho hệ thống
- Công nghệ phổ biến trên thị trường
- Thói quen về công nghệ của khách hàng
- Yêu cầu tính ổn định và băng thông của hệ thống mạng
- Ràng buộc về phap lý

Tùy thuộc vào mỗi khách hàng cụ thể mà thứ tự ưu tiên, sự chi phối của các yếu tố sẽ khác nhau dẫn đến giải pháp thiết kế sẽ khác nhau. Tuy nhiên các công việc mà giai đoạn thiết kế phải làm thì giống nhau. Chúng được mô tả như sau:

1. Thiết kế sơ đồ mạng ở mức luận lý:
- Thiết kế sơ đồ mạng ở mức luận lý liên quan đến việc chọn lựa mô hình mạng, giao thức mạng và thiết đặt các cấu hình cho các thành phần nhận dạng mạng.
- Mô hình mạng được chọn phải hỗ trợ được tất cả các dịch vụ đã được mô tả trong bảng Đặc tả yêu cầu hệ thống mạng. Mô hình mạng có thể chọn là Workgroup hay Domain (Client / Server) đi kèm với giao thức TCP/IP, NETBEUI hay IPX/SPX.

2. Xây dựng chiến lược khai thác và quản lý tài nguyên mạng:
- Chiến lược này nhằm xác định ai được quyền làm gì trên hệ thống mạng. Thôngthường, người dùng trong mạng được nhóm lại thành từng nhóm và việc phân quyền được thực hiện trên các nhóm người dùng.

3. Thiết kế sơ đồ mạng ở vật lý

Căn cứ vào sơ đồ thiết kế mạng ở mức luận lý, kết hợp với kết quả khảo sát thực địa bước kế tiếp ta tiến hành thiết kế mạng ở mức vật lý. Sơ đồ mạng ở mức vật lý mô tả chi tiết về vị trí đi dây mạng ở thực địa, vị trí của các thiết bị nối kết mạng như Hub, Switch, Router, vị trí các máy chủ và các máy trạm. Từ đó đưa ra được một bảng dự trù các thiết bị mạng cần mua. Trong đó mỗi thiết bị cần nêu rõ: Tên thiết bị, thông số kỹ thuật, đơn vị tính, đơn giá,…

4. Chọn hệ điều hành mạng và các phần mềm ứng dụng

Một mô hình mạng có thể được cài đặt dưới nhiều hệ điều hành khác nhau.Quyết định chọn lựa hệ điều hành mạng thông thường dựa vào các yếu tố
như:
  - Giá thành phần mềm của giải pháp.
  - Sự quen thuộc của khách hàng đối với phần mềm.
  - Sự quen thuộc của người xây dựng mạng đối với phần mềm.

### Cài đặt mạng:

Khi bản thiết kế đã được thẩm định, bước kế tiếp là tiến hành lắp đặt phần cứng và cài đặt phần mềm mạng theo thiết kế.

1. Lắp đặt phần cứng:
Cài đặt phần cứng liên quan đến đi dây mạng và lắp đặt các thiết bị kết nối mạng (Hub, Switch, Router) vào đúng vị trí trong thiết kế vaakt lý đã mô tả

2. Cài đặt và cấu hình phần mềm:
- Tiến trình cài đặt phần mềm bao gồm:
  - Cài đặt hệ điều hành mạng cho các server, các máy trạm
  - Cài đặt và cấu hình các dịch vụ mạng.
  - Tạo người dùng, phân quyền sử dụng mạng cho người dùng.
- Tiến trình cài đặt và cấu hình phần mềm phải tuân thủ theo sơ đồ thiết kế mạng mức luận lý đã mô tả. Việc phân quyền cho người dùng pheo theo đúng chiến lược khai thác và quản lý tài nguyên mạng.
- Nếu trong mạng có sử dụng router hay phân nhánh mạng con thì cần thiết phải thực hiện bước xây dựng bảng chọn đường trên các router và trên các máy tính.

### Kiểm thử mạng:

- Sau khi đã cài đặt xong phần cứng và các máy tính đã được nối vào mạng. Bước kế tiếp là kiểm tra sự vận hành của mạng.
- Trước tiên, kiểm tra sự nối kết giữa các máy tính với nhau. Sau đó, kiểm tra hoạt động của các dịch vụ, khả năng truy cập của người dùng vào các dịch vụ và mức độ an toàn của hệ thống.
- Nội dung kiểm thử dựa vào bảng đặc tả yêu cầu mạng đã được xác định lúc đầu.

### Bảo trì hệ thống:

Mạng sau khi đã cài đặt xong cần được bảo trì một khoảng thời gian nhất định để khắc phục những vấn đề phát sinh xảy trong tiến trình thiết kế và cài đặt mạng.