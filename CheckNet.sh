#!/bin/sh
cd "$(dirname "$0")"

base64 -d pswd.b64 | python3 cli.py auth4 login -u zhouyc19
python3 cli.py auth4 checklogin -u zhouyc19 > log.txt
