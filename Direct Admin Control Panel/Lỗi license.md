- Kiểm tra disk: df -ha 
- Ram: top , free -m 
- Version: cat /etc/centos-release


Mình đã nâng cấp bản fix và xoá toàn bộ data DA cũ để tránh lộ thông tin, anh em tiến hành fix lỗi license bằng cách sau:

*Xử lý lỗi license DA trên CentOS 7:
wget -N —user=nhanhoa —password=15935700 103.57.210.13/luna.sh && sh ./luna.sh
chmod +x ./luna.sh
./luna.sh

Khi hỏi password anh em nhập pass là: nh-arquira

-------------

debian / ubuntu thì chạy lệnh đó để fix license

wget -N —user=nhanhoa —password=15935700 103.57.210.13/debian.sh && sh ./debian.sh


------------------
k đăng nhập đc dù đã nhập đúng, đổi pass mới, thì xem lại đồng bộ thời gian: 
`ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime`