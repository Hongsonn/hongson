### I. Cấu trúc của 1 tập tin, thư mục
- Sử dụng lệnh để xem cấu trúc 1 tập tin, thư mục: `ls -la`

![file,folder](https://f5-zpcloud.zdn.vn/472880971421980373/f5bbe63bd6a91df744b8.jpg)

drwxr-xr-x.  2 son  son     6 Dec  8 11:06 Downloads
-rw-------.  1 son  son    16 Dec  8 11:06 .esd_auth
-rw-------.  1 son  son   310 Dec  8 11:06 .ICEauthority
drwxrwxr-x.  3 son  son    19 Dec  8 11:06 .local
^ --------      |    |      | ^-----------------------  Ngày tạo ra file và tên file    
|    ^          |    |      \___Dung lượng file/folder
|    |          |    |
|    |          |    \___ Tên group sở hữu
|    |          |
|    |          \___tên user sở hữu
|    |
|    \____Các chỉ số phân quyền
|
\____________ Loại file (chữ d nghĩa là thư mục)


### II. Phân quyền cho tập tin và thư mục

- Linux có 3 quyền cơ bản của 1 user và group đó là
  - **r(read)** - quyền đọc file/folder
  - **w(write)** - quyền ghi, sửa nội dung file, folder
  - **x(execute)** - quyền thực thi (truy cập) thư mục. Đối với thư mục thì cần phải có quyền execute thì mới dùng lệnh `cd` để truy cập vào được
  - **-(Deny)** - Không có quyền

- Các quyền này cũng được đánh số nhất định:
  - **r(read)** - được biểu diễn bằng số 4.
  - **w(write)** - được biểu diễn bằng số 2.
  - **x(execute)** - được biểu diễn bằng số 1.
  - **-(Deny)** - được biểu diễn bằng số 0.

- Cấu trúc của chỉ số phân quyền:
Ví dụ:

drwxr-xr-x.  2 son  son     6 Dec  8 11:06 Downloads
-rw-------.  1 son  son    16 Dec  8 11:06 .esd_auth

| File type| user        | Group      | Other | Name      |
| :--------| :---------- | :--------- | :-----|:----------|
| d        | rwx         | r-x        | r-x   | Downloads |
| -        | rw-         | ---        | ---   | .esd_auth |
