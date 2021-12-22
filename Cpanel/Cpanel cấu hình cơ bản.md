# I. Thao tác Web Hosting Manager (WHM)

1. **Cấu hình package**
-  Mỗi user tương ứng với một hosting nên việc cấu hình gói limit mặc định đối với từng user sẽ là điều kiện đầu tiên khi thao tác với WHM
- Add a Package:
- Cấu hình gói thông số: 
  - Tên package
  - Tài nguyên:
      - Hạn ngạch đĩa 
      - Giới hạn số lượng tài khoản Email

- Sau đó list các gói đã tạo

2. Tiến hành khởi tạo tài khoản
- Tạo tài khoản người dùng mới
- Điền các thông tin cần thiết:
  - Domain
  - Username
  - Password
  - Email
  - Chọn Package

3. Đăng nhập vào tài khoản vừa tạo

# II. Thao tác trên cPanel (Giao diện User để quản lý web)

1. Trỏ DNS cho Domain đó về Shared IP address của server
- Kiểm tra lại trên MXtoolbox

2. Download source code WP 
- Tại link `https://wordpress.org/download/`

3. Khởi tạo DB
- Đăng nhập vào cPanel với ip 
- Khởi tạo DB thì có nhiều cách:
  - TRuy cập phpMyadmin
  - MySQL Database
  - MySQL Database Winzard

- Ở đây sử dụng MySQL Database Wizard để đơn giản quá trình tạo DB 
  - b1. Nhập teen DB
  - b2. Nhập user và mật khẩu
  - b3. Chọn ALL PRIVILEGES để cho phép tất cả cá quyền
  - b4. Hoàn tất quá trình khởi tạo

4. Đăng nhập và cấu hình website
- Quay lại giao diện chính truy cập Domain
- Đã thấy hiện tên Domain chính
- Để quản lý domain này click vào Manage
- có thể quản lý các cấu hình email, zone 
- Để upload source code click vào public_html
- Vào Giao diện File Manager:
  - Tiến hành up file và giải nén file: trong đường dẫn `/public_html`
  - Đối với Domain chính DocumentRoot sẽ nằm ở `/home/user/public_html `
  - Đối với các Addon Domain thì DocumentRoot nằm ở `/home/user/<domain>/public_html `

- Tiến hành cấu hình với Domain chính:
  - Chọn thư mục WP vừa giải nén, select all, move cascfile và folder ra ngoài `../public_html`
  - Sau đó xóa các thư mục trống tại `../public_html`
  - Chỉnh sửa file config: `wp-config.php`, Cập nhật thông tin DB và user đã khởi tạo trước đó.

- Sau đó truy cập website
