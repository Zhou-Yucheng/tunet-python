#!/usr/bin/pwsh

[CmdletBinding()]
param (
    [Parameter()]
    [switch]$relogin
)

cd $PSScriptRoot
$username=cat username.txt
$pswd = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String((cat pswd.b64)))
# $pswd = cat pswd.txt

if($relogin){
    echo 'logout and relogin'
    python cli.py auth4 logout -u $username
}
$pswd | python cli.py auth4 login --net -u $username
python cli.py auth4 checklogin -u $username | tee log.txt
