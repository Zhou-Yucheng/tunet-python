#!/bin/sh
cd "$(dirname "$0")"

base64 -d pswd.b64 | python3 cli.py net login -u zhouyc19
python3 cli.py net checklogin -u zhouyc19 > checklogin.txt
