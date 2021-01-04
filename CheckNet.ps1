cd $PSScriptRoot

# $pswd = cat .\pswd.txt
$pswd = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String((cat .\pswd.b64)))
$pswd | python .\cli.py auth4 login -u zhouyc19
python3 cli.py auth4 checklogin -u zhouyc19 > log.txt
