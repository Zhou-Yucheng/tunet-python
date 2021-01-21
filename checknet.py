#!/usr/bin/python3.7

import base64
import argparse
from pathlib import Path
import tunet


parser = argparse.ArgumentParser()
parser.add_argument('-r', '--relogin', action='store_true', help='logout and relogin')
args = parser.parse_args()


if __name__ == "__main__":
    dir=Path(__file__).parent
    username=Path(dir / 'username.txt').read_text()
    password=base64.b64decode(Path(dir / 'pswd.b64').read_text())

    if args.relogin:
        print('logout and relogin...')
        tunet.auth4.logout(username)
        tunet.auth4.login(username, password, net=True)

    res=tunet.net.checklogin()
    if not res:
        tunet.auth4.login(username, password, net=True)
        res=tunet.net.checklogin()

    print(res)
    Path(dir / 'log.txt').write_text(str(res)+'\n')
