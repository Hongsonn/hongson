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
  - `command -h` và `command --help`: Hiển thị thông tin trợ giúp ngắn gọn về lệnh
  - `man command`: Hiển thị trang trợ giúp đầy đủ của lệnh

- Liệt kê tập tin (file): 
  - `ls` : liệt kê nội dung của thư mục hiện hành
  - `ls -a`: Liệt kê tất cả tập tin, kể các các tập tin có thuộc tính ẩn.
  - `ls -l`: Hiển thị đầy đủ các thông tin (quyền truy cập, chủ, kích thước,...)

- Quản lý tập tin và thư mục: 
  - `cp` : Copy 1 tập tin hoặc 1 thư mục: **cp soure_path destination_path**
  - `mkdir`: Cho phép tạo ra 1 thư mục mới, rỗng, tại vị trí được chỉ định: **mkdir directoryname**
  - `mv`: Cho phép di chuyển 1 tập tin từ thư mục này tới thư mục khác có thể thực hiện việc đổi tên mục tiêu: **mv source_path destination_path**
  - `rm`: Cho phép xóa các tập tin, dùng lệnh `rm -R` để xóa 1 thư mục và tất cả những gì nằm trong nó: **rm filename**.
  - `rmdir`: Dùng để xóa thư mục: **rmdir directoryname**
  - `touch`: Tạo tập tin trống: **touch filename**

- Xác định vị trí của tập tin:
  - `find`: Tìm tập tin **filename** bắt đầu từ thư mục **path: find path -name filename**
  - `locate` Tìm tập tin trong cơ sở dữ liệu của nó có tên là **filename: locate filename**

- Làm việc với tập tin văn bản: 
  - `cat`: Để xem nội dung của 1 tập tin văn bản ngắn, dùng nó để in ra màn hình: **cat file name**
  - `less`: Cho phép xem 1 tạp tin dài bằng cách cuộn lên xuống bằng các phím mũi tên. Dùng **q** để thoát chế độ xem: **less filename**
  - `grep`: Một công cụ mạnh để tìm 1 chuỗi trong 1 tập tin văn bản. Khi lệnh `grep` tìm thấy chuỗi, nó sẽ in ra cả dòng đó lên màn hình: **grep string filename**
  - `sort`: Sắp xếp các dòng trong tập tin theo thứ tự alphabet và in nội dung ra màn hình: **sort filename**

- Giải nén:
  - `bunzip2`: Giải nén 1 tập tin **bzip2 (*.bz2)**. Thường dùng cho các tập tin lớn: **bunzip2 filename.bz2**
  - `gunzip`: Giải nén 1 tập tin **gzipped (*.gz)**: **gunzip filename.gz**
  - `unzip`: Giải nén 1 tập tin PkZip hoặc WinZip **(*.zip): unzip filename.zip**
  - `tar`: Nén và giải nén các tập tin **.tar, .tar.gz**. Ví dụ: **tar - xvf filename.tar** và **tar - xvzf filename.tar.gz**

- Xem thông tin hệ thống:
  -`date`: In ngày giờ hệ thống
  -`df -h`: In thông tin không gian đĩa được dùng
  -`free`: In thông tin bộ nhớ được dùng
  -`history`: Hiển thị các lệnh được thực hiện bởi tài khoản hiện tại
  -`hostname`: In tên máy chủ cục bộ (host)
  -`pwd`: In đường dẫn đến thư mục làm việc hiện hành
  -`rwho -a`: Liệt kê tất cả các người dùng đã đăng nhập vào network
  -`uptime`: in thời gian kể từ lần reboot gần nhất
  -`who`: Liệt kê tất cả người dùng đã đăng nhập vào máy
  -`whoami`: In tên người dùng hiện hành

- Các lệnh dùng theo dõi tiến trình: 
  -`ps`: Liệt kê các tiến trình đang kích hoạt bởi người dùng và PID của các tiến trình đó.
  -`ps -aux`: Liệt kê các tiến trình đang kích hoạt cùng với tên của người dùng là chủ tiến trình
  -`top`: Hiển thị danh sách các tiến trình đang kích hoạt, danh sách này được cập nhật liên tục
  