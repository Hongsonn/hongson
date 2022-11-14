Sử dụng iperf để test

```
https://elkano.org/blog/testing-10g-network-iperf/
yum install epel-release -y
yum install iperf -y
sudo iperf -s                                       // Mở kết nối để tiếp nhận các traffic
sudo iperf -c 172.17.16.78 -i1 -t 900 -m            // Thay địa chỉ ip - Nơi bắn các trafic tiến vào server " sudo iperf -s "   ---- Thực hiện cho tới khi đạt giới hạn dây quang (VD quang 40GB - test trên 30 là ok)
```

Để kiểm tra ta sử dụng lệnh `nload`

https://prnt.sc/PATsyc-bkyet

------------------------------------------
Để kiểm tra card mạng trên máy 

yum install epel-release -y

yum install iperf -y

----------
ethtool eth0
Supported ports: [ TP ] - là card bình thường 

Supported ports: [ FIBRE ] - là card quang

https://prnt.sc/YVIjI29K-UIH


-----------------------------------
Kiểm tra độ tương thích giữa 2 cpu của server:

yum install libvirt -y
systemctl start libvirtd
virsh capabilities > virsh-caps.xml
Chỉnh sửa file, xóa hết các dòng và chỉ giữ lại block <cpu> </cpu> như ví dụ dưới đây
```
<cpu>
      <arch>x86_64</arch>
      <model>core2duo</model>
      <topology sockets='1' cores='4' threads='1'/>
      <feature name='lahf_lm'/>
      <feature name='sse4.1'/>
      <feature name='xtpr'/>
      <feature name='cx16'/>
      <feature name='tm2'/>
      <feature name='est'/>
      <feature name='vmx'/>
      <feature name='ds_cpl'/>
      <feature name='pbe'/>
      <feature name='tm'/>
      <feature name='ht'/>
      <feature name='ss'/>
      <feature name='acpi'/>
      <feature name='ds'/>
</cpu>
```
Chuyển file này tới máy cần compare
Tiến hành compare

virsh cpu-compare virsh-caps.xml
Kết quả ra là superset hoặc identical là tương thích

https://prnt.sc/5u8woMbGkfpV


(copy file xml ở server 1 sau đó chuyển sang sv2 cho chạy và ngược lại: virsh cpu-compare sv1.xml - chạy ở sv 2 và virsh cpu-compare sv2.xml - chạy ở sv 1)