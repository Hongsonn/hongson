#!/bin/bash

# onestor 监视器IP 用户名 密码
onestor_ip=103.170.122.3
onestor_username=root
onestor_password=Admin@123stor

# onestor存储系统位置，默认为下面值，如果不同，请修改该路径
onestor_keyring=/etc/ceph/ceph.client.admin.keyring
onestor_conf=/etc/ceph/ceph.conf

# 将onestor的keyring和conf配置文件拷贝到本机
sshpass -p $onestor_password scp $onestor_username@$onestor_ip:$onestor_keyring ./roles/onestor-config/files/ceph.client.admin.keyring
sshpass -p $onestor_password scp $onestor_username@$onestor_ip:$onestor_conf ./roles/onestor-config/files/ceph.conf
