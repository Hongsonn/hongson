# Thành phần của DB
1. Bảng:
- Bảng (table) là thành viên cấu thành CSDL chính vì vậy nó đóng một vai trò rất quan trọng trong việc tạo một hệ CSDL.
- Trong bảng gồm:
  1. tên Cột 
  2. Kiểu dữ liệu cho cột (field): (data type)
  - SQL server cung cấp cho ngời dùng các dạng dữ liệu sau:
  ![a](https://f5-zpcloud.zdn.vn/5311175414108150694/2bec9e7a0169cb379278.jpg)
  ![a](https://f5-zpcloud.zdn.vn/110246382714345189/38eb0b78966b5c35057a.jpg)
  3. Length: Chiều dài của trờng dữ liệu
  4. Precision: Độ chính xác của trờng dữ liệu
  5. Allow null có giá trị null hay không
  Nên nhớ rằng trờng dữ liệu nào là khoá thì nó nhất định không tồn tại giá trị null
  6. Default value: Giá trị ngầm định của trường dữ liệu.

- Khi mà bạn đã hoàn thành quá trình trên trớc khi đóng lại bạn nhớ là phải ghi lại
- Một table là một thành viên của một CSDL(database); để có ngữ nghĩa về ngôn ngữ quản trị CSDL thì bất cứ một table nào cũng phải có nghĩa trong CSDL đó.
- Dữ liệu được tạo ra không phải user nào cũng có thể truy cập đợc chính vì vậy mà bạn phải cần thiết lập quyền truy cập cho từng loại table mà bạn đã tạo ra từng chức năng riêng biệt thì càng tốt.

2. Khóa 
Tập hợp các thuộc tính độc lập với nhau. với mục đích là liên kết giữa các bảng với nhau:
- **Primary key**: là khóa chính, chỉ tồn tại duy nhất, k nhận giá trị null
- **Foreign key**: khóa phụ là 1 hay nhiều trường dữ liệu được thiết lập để liên kết giữa các bảng với nhau
 