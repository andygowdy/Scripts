Set-NetAdapter -Name "Ethernet" -MacAddress "00-15-14-16-DD-94" -Confirm:$false -NoRestart
Remove-NetIPAddress -InterfaceAlias Ethernet -Confirm:$false
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.108 -Confirm:$false
Set-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.108 -PrefixLength 24 -Confirm:$false
Restart-NetAdapter -Name "Ethernet" -Confirm:$false