# Log file

Log file của cPanel được lưu tại thư mục `/usr/local/cpanel/logs/`, gồm có các file chính sau:

- Access_log: Log truy cập cpanel và WHM
- Errorr_log : log các lỗi cpanel và WHM
- Login_log: Log đăng nhập cpanel và Whm

Ngoài ra Cpanel còn lưu log trong hệ thống tại thư mục `/var/log/` gồm có: 
- bandwidth: log lưu lượng băng thông sử dụng của server
- chkservd.log: log hệ thống theo dõi các dịch vụ trên server
- clamav: log của hệ thống quét virus clamav
- cpupdate: log tác vụ nâng cấp Cpanel\
- exim_mainlog: log gửi/nhận thư của hệ thống exim
- exim_rejectlog: log các két nối từ chối của exim
- maillog: log các đăng nhập kết nối gửi nhận thư của các dịch vụ mail (pop3/imap)
- xferlog: log kết nối qua FTP

# Log 