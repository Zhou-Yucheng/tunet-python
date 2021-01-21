# tunet-python

TUNet 2018 认证协议的纯 python 实现，含 auth4 / auth6 / net 认证。适用于服务器在无人交互时自动认证。

Fork自<https://github.com/yuantailing/tunet-python>，包装了checknet便于自动调用

## checknet

在Linux中设置任务计划，自动调用脚本 (crontab)
```
crontab -e
# 打开crontab文件
# 设置每两分钟检测一次联网，每天8点断开重连接一次

---
SHELL=/bin/sh  
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin  
# m h  dom mon dow   command  
*/2 * * * * python3.7 /home/zhouyc/Codes/tunet-python/checknet.py
0 8 * * * python3.7 /home/zhouyc/Codes/tunet-python/checknet.py -r
```
