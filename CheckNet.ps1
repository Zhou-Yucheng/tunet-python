cd $PSScriptRoot

$x=python3 cli.py net checklogin -u zhouyc19
echo $x
$x > checklogin.txt
if($x -eq 'not login'){
    # $pswd = cat .\pswd.txt
    $pswd = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String((cat .\pswd.b64)))
    $pswd | python .\cli.py net login -u zhouyc19
}
