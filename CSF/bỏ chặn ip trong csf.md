# Bỏ chặn ip trong CSF

1. Kiểm tra ip ở showip.net

Sau khi có được địa chỉ IP internet của bạn thì hãy mở SSH và kiểm tra xem địa chỉ IP của bạn có đang bị block bởi CSF hay không bằng lệnh dưới đây
- Ví dụ, là tôi, tôi sẽ kiểm tra bằng IP internet 171.251.236.89 của tôi:
`csf -g 171.251.236.89`
2. Unblock địa chỉ IP

- Nếu địa chỉ IP của bạn bị chặn bởi CSF, thì bạn hãy sử dụng lệnh dưới đây để gỡ bỏ IP khỏi danh sách chặn `/etc/csf/csf.deny`:

`csf -dr 171.251.236.89`
- Sau đó, cần phải thêm một lệnh nữa để CSF restart và có tác dụng với các lệnh đã gõ trước đó.
`csf -r`

