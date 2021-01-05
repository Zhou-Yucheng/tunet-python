cd $PSScriptRoot

$username=cat .\username.txt
# $pswd = cat .\pswd.txt
$pswd = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String((cat .\pswd.b64)))
$pswd | python3 .\cli.py auth4 login --net -u $username
python3 cli.py auth4 checklogin -u $username > log.txt
