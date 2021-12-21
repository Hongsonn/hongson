1. Tạo các post:

![a](https://f5-zpcloud.zdn.vn/6092612228780510135/84f2a85a9e4754190d56.jpg)

2. Export database bằng câu lệnh:
`mysqldump -u admin -p dbwptest > data-dump.sql`

![a](https://f5-zpcloud.zdn.vn/5242526388700386764/bf4dcba2e3bf29e170ae.jpg)

3. Xóa tất cả các post từ web

![a](https://f5-zpcloud.zdn.vn/4357019248482560376/14f0e44bc25608085147.jpg)

4. Restore lại database:
- Sử dụng lệnh: `mysql -u admin -p -h localhost dbwptest < /root/data-dump.sql`

5. Kiểm tra lại trang web:

![a](https://f5-zpcloud.zdn.vn/5670161062421793086/bceee43894255e7b0734.jpg)