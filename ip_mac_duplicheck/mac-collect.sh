#!bin/bash
####purpose= For collecting only the mac address from all the DHCP-config files##################
###Note:if a new dhcp file created like /etc/dhcp/include/dhcpd.conf_static_7 add it in the script##########

awk '/hardware ethernet/ {print $3}' /etc/dhcp/include/dhcpd.conf_static_1 > macs1.txt 
awk '/hardware ethernet/ {print $3}' /etc/dhcp/include/dhcpd.conf_static_3 > macs3.txt
awk '/hardware ethernet/ {print $3}' /etc/dhcp/include/dhcpd.conf_static_4 > macs4.txt
awk '/hardware ethernet/ {print $3}' /etc/dhcp/include/dhcpd.conf_static_5 > macs5.txt
awk '/hardware ethernet/ {print $3}' /etc/dhcp/include/dhcpd.conf_static_6 > macs6.txt

