### I. Cấu trúc của 1 tập tin, thư mục
- Sử dụng lệnh để xem cấu trúc 1 tập tin, thư mục: `ls -la`

![file,folder](https://f5-zpcloud.zdn.vn/472880971421980373/f5bbe63bd6a91df744b8.jpg)

![q](https://f4-zpcloud.zdn.vn/5998270238706322861/d2726983a211694f3000.jpg)

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

| File type| Owner       | Group      | Other | Name      |
| :--------| :---------- | :--------- | :-----|:----------|
| d        | rwx         | r-x        | r-x   | Downloads |
| -        | rw-         | ---        | ---   | .esd_auth |

  - owner: Quyền của user mà chủ sở hữu của file này
  - group: Quyền của những users thuộc group mà chủ sở hữu của file này
  - other: Quyền của tất cả các user khác trên máy

- Có thể thấy được các thông số của file Downloads:
  - owner có quyền: r+w+x = 4+2+1 = 7
  - Group có quyền: r+-+x = 4+0+1 = 5
  - Orther có quyền: r+-+x = 4+0+1 = 5

Chỉ số phân quyền của file Downloads = 755

- Để thay đổi các chỉ số phân quyền này ta sử dụng lệnh chmod:
`# chmod <tùy chọn> <chỉ số phân quyền> <tên file/thư mục>`
- Các tùy chọn: 
  - **-v**: Hiển thị báo cáo sau khi chạy lệnh, mỗi lần đổi quyền là hiển thị 1 lần
  - **-c**: Giống như trên, nhưng chỉ khi nó đã làm xong tất cả
  - **-R**: Áp dụng luôn vào các file/folder nằm bên trong folder được phân quyền.

### III. Thay đổi chủ sở hữu cho tập tin và thư mục

Mọi tập tin và thư mục đề có user và group của riêng nó, nếu muốn thay đổi dùng lệnh chown:
`# chown <tùy chọn> <tên user><tên group> <tên file/foder> `
- Các tùy chọn: 
  - **-v**: Hiển thị báo cáo sau khi chạy lệnh, mỗi lần đổi quyền là hiển thị 1 lần
  - **-c**: Giống như trên, nhưng chỉ khi nó đã làm xong tất cả
  - **-R**: Áp dụng luôn vào các file/folder nằm bên trong folder được phân quyền.

- Ví dụ: 
```
# chown son:son test1   <Thay đổi cả user và group cho test1>
# chown son test1         <Thay đổi user cho test1>
# chown :son test1        <Thay đổi group cho test1>
```