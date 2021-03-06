# Mô hình OSI và mô hình TCP/IP
> Mô hình OSI (Open Systems Interconnection )
### 1. Khái niệm:
- Là mô hình liên kết giữa các hệ thống mở
- Cho phép các hệ thống khác nhau có thể truyền thông với nhau mà không cần quan tâm tới kiến trúc bên dưới chúng.
- Là một mô hình để nhận biết và thiết kế một kiến trúc mạng linh dộng, vững trắc và có khả năng liên tác.
### 2. Mô hình:
- Mô hình OSI được phân tầng với mục đích thiết kế các hệ thống mạng cho phép tất cả các kiểu hệ thống máy tính khác nhau có thể truyền thông với nhau.
- Gồm 7 tầng, các tầng có liên quan tới nhau, mỗi tầng định nghĩa 1 phần của quá trình truyền thông tin trên mạng.
  - Tầng vật lý (Physical layer): Thực hiện các chức năng cần thiết để truyền luồng bit dữ liệu qua môi trường vật lý (Card ghép nối, môi trường truyền dẫn,..)
  - Tầng liên kết dữ liệu (Datalink layer): chuyển các frame đến các địa chỉ đích. Có thể kiểm soát lưu lượng, kiểm soát lỗi, kiểm soát truy cập.
  - Tầng mạng (Network layer): Chuyển dữ liệu qua các mạng khác nhau bằng địa chỉ logic, định tuyến đường đi cho gói dữ liệu.
  - Tầng giao vận (Trasport layer): Đảm bảo dữ liệu được toàn vẹn giữa thiết bị đầu cuối. Kiểm soát kết nối, kiểm soát lưu lượng, kiểm soát lỗi.
  - Tầng phiên (Session layer): Thiết lập, duy trì và đồng bộ hóa tính liên tác giữa 2 bên
  - Tầng trình diễn (Presentation layer): Phiên dịch, mã hóa, nén dữ liệu.
  - Tầng ứng dụng (Application layer): Cung cấp giao diện, quản lý, truy cập và chuyển file

> Bộ giao thức TCP/IP 
### 1. Khái niệm:
  - Là giao thức phân cấp, được tạo bởi các module độc lập, mỗi module cung cấp 1 chức năng nhất định.
### 2. Mô hình:
- Gồm có 5 tầng: Vật lý, liên kết dữ liệu, mạng (IP), giao vận (TCP, UDP) và ứng dụng.

![tcp/ip](https://adminvietnam.org/wp-content/uploads/2016/08/Capture1.png)

- Lớp Application kiêm nhiệm vụ vai trò của lớp 5,6,7 của mô hình OSI . Các thực thể của lớp  Application cũng cung cấp giao tiếp đến người dùng, cung cấp các ứng dụng cho phép người dùng trao đổi dữ liệu ứng dụng qua mạng.
- Lớp Transport đảm nhận nhiệm vụ giống như lớp Transport bên mô hình OSI. Hai giao thức nổi tiếng của tầng Tranport thuộc mô hình TCP/IP là TCP và UDP.
- Lớp Internet có nhiệm vụ giống như lớp Network của mô hình OSI. 
- Lớp Network Access đảm nhận nhiệm vụ của hai lớp Data Link và Physical của mô hình OSI

> Khác nhau:

- TCP ra mắt trước nhằm tạo ra 1 chuẩn chung
- OSI ra mắt sau nhằm làm rõ các quá trinh nhưng không được sử dụng trong thực tế

> Quá trình bắt tay 3 bước

![3buoc](https://static.cuongquach.com/resources/images/2017/08/3-buoc.png)