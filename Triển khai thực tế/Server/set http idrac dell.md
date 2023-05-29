# 1. - Nếu gặp lỗi bảo mật

![a](https://f10-zpcloud.zdn.vn/1146389072473952772/070c95d710a5cefb97b4.jpg)

- Ta ssh vào server Dell sau đó chạy1 trong các tùy chọn. Ở đay là sử dụng http để bỏ lỗi k kết nối đc:

An event is recorded in the Lifecycle Controller log file when this feature is enabled or disabled.

To disable the HTTP to HTTPs redirection:
racadm set iDRAC.Webserver.HttpsRedirection Disabled
To enable HTTP to HTTPs redirection:
racadm set iDRAC.Webserver.HttpsRedirection Enabled
To view the status of the HTTP to HTTPs redirection:
racadm get iDRAC.Webserver.HttpsRedirection

![a](https://f10-zpcloud.zdn.vn/6923122767467325993/65d06450fc22227c7b33.jpg)

# 2. Reboot idrac không mất cấu hình ip và user: `racadm racreset`
# 3. Reboot cấu hình lại ip và user idrac: `racadm racresetcfg`