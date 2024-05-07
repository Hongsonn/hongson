1	Backup/Restore Error	Không thể backup hoặc restore được acc		
2	Apache Function Normally	Tạo domain mới sẽ gặp lỗi này		

```
/usr/local/directadmin/custombuild/build update
					sed -i 's/1.63/1.60/g'  /usr/local/directadmin/custombuild/build
					cd /usr/local/directadmin/custombuild
					./build rewrite_confs
```					

4	Skin mới enhanded chỗ navigation ko hiển thị menu	"Skin mới enhanded chỗ navigation ko hiển thị menu và 
ko apply all user
"	https://prnt.sc/GD3nxHo8ieIa	
5	All user tích chọn SSH Access -> ko SSH được	All user tích chọn SSH Access -> ko SSH được		
					
6	Apache bị stop	Apache auto stop		
```
cd /usr/local/directadmin/custombuild
./build rewrite_confs"
```