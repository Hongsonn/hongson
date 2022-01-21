# CẤU HÌNH FILE /ETC/FSTAB ĐỂ QUẢN LÝ VIỆC MOUNT THIẾT BỊ TRONG LINUX

1. File /etc/fstab

File cấu hình /etc/fstab chứa thông tin về các thiết bị (phân vùng ổ cứng, CD/DVD, USB, ISO image…)

2. Cấu trúc file /etc/fstab

![a](https://f5-zpcloud.zdn.vn/4523122411378021615/9a4e52e73f2ff271ab3e.jpg)

- **Cột 1**: cho biết loại thiết bị (phân vùng, CD/DVD, USB, ISO image…). Đồng thời cũng cho biết đường dẫn tới file đại diện cho thiết bị (device file) . Trong Linux, mọi tài nguyên phần cứng lẫn phần mềm đều được xem là file, các device file thường nằm ở thư mục /dev

- **Cột 2**: đường dẫn của mount point, là một thư mục trống được tạo sẵn trong cây thư mục. Khi gõ lệnh mount, nếu bạn không chỉ định rõ mount point thì đây là mount point mặc định cho thiết bị ở cột 

- **Cột 3**: là kiểu filesystem của thiết bị. Linux hỗ trợ nhiều kiểu filesystem, dưới đây là 1 số filesystem phổ biến:

  - ext3 là hệ thống tập tin tiêu chuẩn được sử dụng bởi các hệ điều hành dựa trên nhân linux.

  - ext4 là phiên bản "nâng cao" của ext3 với nhiều cải tiến khác nhau, về cơ bản là nâng cấp lên định dạng ext3.

  - swap: phân vùng làm không gian bộ nhớ ảo, dùng để bổ sung thêm bộ nhớ cho hệ thống khi hệ điều hành phát hiện việc thiếu hụt bộ nhớ RAM.

  - Vfat (FAT16, FAT32) và NTFS: đây là các filesystem được Windows hỗ trợ.

  - nfs: dành cho các tài nguyên ở xa, được chia sẻ qua mạng sử dụng NFS

  - auto: đây không phải là 1 filesytem. Nó có nghĩa là hệ thống sẽ tự động nhận diện loại filesystem của thiết bị khi thiết bị đó được mount.

- **Cột 4**: là các tùy chọn khi mount:

  - auto: tự động mount thiết bị khi máy tính khởi động.
  - noauto: không tự động mount, nếu muốn sử dụng thiết bị thì sau khi khởi động vào hệ thống bạn cần chạy lệnh mount.
  - user: cho phép người dùng thông thường được quyền mount.
  - nouser: chỉ có người dùng root mới có quyền mount.
  - exec: cho phép chạy các file nhị phân (binary) trên thiết bị.
  - noexec: không cho phép chạy các file binary trên thiết bị.
  - ro (read-only): chỉ cho phép quyền đọc trên thiết bị.
  - rw (read-write): cho phép quyền đọc/ghi trên thiết bị.
  - sync: thao tác nhập xuất (I/O) trên filesystem được đồng bộ hóa.
  - async: thao tác nhập xuất (I/O) trên filesystem diễn ra không đồng bộ.
  - defaults: tương đương với tập các tùy chọn rw, suid, dev, exec, auto, nouser, async

- **Cột 5** là tùy chọn cho chương trình dump, công cụ sao lưu filesystem. Điền 0: bỏ qua việc sao lưu, 1: thực hiện sao lưu.

- **Cột 6** là tùy chọn cho chương trình fsck (kiểm tra hệ thống tệp), công cụ dò lỗi trên filesystem. Điền 0: bỏ qua việc kiểm tra, 1: thực hiện kiểm tra