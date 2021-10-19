Set-NetAdapter -Name "Ethernet" -MacAddress "b0-6e-bf-35-35-b6" -Confirm:$false -NoRestart
Remove-NetIPAddress -InterfaceAlias Ethernet -Confirm:$false
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.41 -Confirm:$false
Set-NetIPAddress -InterfaceAlias Ethernet -IPAddress 10.66.96.41 -PrefixLength 24 -Confirm:$false
Restart-NetAdapter -Name "Ethernet" -Confirm:$false