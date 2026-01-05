#!bin/bash
####purpose= For collecting only the IP address from all the DHCP-config files##################
###Note:if a new dhcp file created like /etc/dhcp/include/dhcpd.conf_static_7 add it in the script##########
awk '/fixed-address/ {for (i=1; i<=NF; i++) if ($i ~ /fixed-address/) {gsub(/;/, "", $(i+1)); print $(i+1)}}' /etc/dhcp/include/dhcpd.conf_static_1 > ipsout1.txt
awk '/fixed-address/ {for (i=1; i<=NF; i++) if ($i ~ /fixed-address/) {gsub(/;/, "", $(i+1)); print $(i+1)}}' /etc/dhcp/include/dhcpd.conf_static_3 > ipsout3.txt
awk '/fixed-address/ {for (i=1; i<=NF; i++) if ($i ~ /fixed-address/) {gsub(/;/, "", $(i+1)); print $(i+1)}}' /etc/dhcp/include/dhcpd.conf_static_4 > ipsout4.txt
awk '/fixed-address/ {for (i=1; i<=NF; i++) if ($i ~ /fixed-address/) {gsub(/;/, "", $(i+1)); print $(i+1)}}' /etc/dhcp/include/dhcpd.conf_static_5 > ipsout5.txt
awk '/fixed-address/ {for (i=1; i<=NF; i++) if ($i ~ /fixed-address/) {gsub(/;/, "", $(i+1)); print $(i+1)}}' /etc/dhcp/include/dhcpd.conf_static_6 > ipsout6.txt
