#!/bin/sh
cd "$(dirname "$0")"

username=$(cat username.txt)
# cat pswd.txt | python3 cli.py auth4 login --net -u $username
base64 -d pswd.b64 | python3 cli.py auth4 login --net -u $username
python3 cli.py auth4 checklogin -u $username > log.txt
