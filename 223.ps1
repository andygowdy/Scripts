Set-NetAdapter -Name "Ethernet" -MacAddress "00-1E-8C-08-80-56" -Confirm:$false -NoRestart
Remove-NetIPAddress -InterfaceAlias Ethernet -Confirm:$false
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.223 -Confirm:$false
Set-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.223 -PrefixLength 24 -Confirm:$false
Restart-NetAdapter -Name "Ethernet" -Confirm:$false