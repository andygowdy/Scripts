Set-NetAdapter -Name "Ethernet" -MacAddress "5A-4E-58-12-42-9D" -Confirm:$false -NoRestart
Remove-NetIPAddress -InterfaceAlias Ethernet -Confirm:$false
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.208 -Confirm:$false
Set-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.208 -PrefixLength 24 -Confirm:$false
Restart-NetAdapter -Name "Ethernet" -Confirm:$false