# I. Lý thuyết:
1. **Các khái niệm cơ bản:**
- User (Người dùng): Để sử dụng Linux, phải có 1 account đăng nhập vào máy Linux. Thông tin về tài khoản gồm có username, Password, các quyền truy xuất tập tin và thư mục dựa vào tài khoản đăng nhập.
- Group (Nhóm): Các người dùng làm việc trên 1 bộ phận hoặc đang làm việc trên cùng 1 project có thể được đưa vào cùng 1 nhóm
- File (Tập tin): Tất cả các thông tin lưu trữ trên Linux được lưu giữ trong các tập tin. Các tập tin được tạo ra về người dùng và chủ tập tin có quyền truy xuất, tạo, sửa, thiết lập kích thước tập tin và phân phối quyền để cho phép người khác có thể truy xuất tập tin
- Directory (Thư mục): Giống Folder trong Windows. Dùng để chứa tập tin và thư mục khác và tạo ra cấu trúc cho hệ thống tập tin.
- Path (Đường dẫn): Là 1 cuỗi các thư mục và có thể kết thúc bằng tên của tập tin. Các thư mục và tập tin được phân cách bởi kí tự /. 
- Permissions (Quyền): Là 1 đặc tính quan trọng trong Linux, tạo ra bảo mật bằng cách giới hạn các hành động mà người dùng có thể thực hiện đối với tập tin và thư mục. Các quyền read, write, execute điều khiển việc truy xuất tới việc truy xuất tập tin của người dùng tạo ra nó. 
- Process (Tiến trình): Khi người dùng thực thi 1 lệnh, Linux tạo ra 1 tiến trình chứa các chỉ thị lệnh. Một tiến trình còn chứa các thông tin điều khiển như thông tin người dùng thực thi lệnh, định danh duy nhất của tiến trình (PID - Process id). 
- Shell: Trong console, người dùng giao tiếp với máy thông qua shell (hệ vỏ). Một shell là 1 chương trình thường được dùng để bắt đầu 1 chương trình khác từ dấu nhắc của shell. Một shell được cấu hình bằng việc thiết lập các biến môi trường cho nó. Khi đăng nhập vào Linux, một shell sẽ được tự động tạo ra, các biến môi trường mặc nhiên (Default) sẽ được thiết lập. Ở đây ta sử dụng shell BASH (Bourne Again SHell).

2. **Một số lệnh cơ bản**:
- Nhóm lệnh trợ giúp: 
  - command -h: Hiển thị thông tin trợ giúp ngắn gọn về lệnh
  - man 