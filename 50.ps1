Set-NetAdapter -Name "Ethernet" -MacAddress "00-14-D1-16-20-94" -Confirm:$false -NoRestart
Remove-NetIPAddress -InterfaceAlias Ethernet -Confirm:$false
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.50 -Confirm:$false
Set-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.50 -PrefixLength 24 -Confirm:$false
Restart-NetAdapter -Name "Ethernet" -Confirm:$false