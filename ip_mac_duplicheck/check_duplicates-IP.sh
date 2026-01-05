#!/bin/bash
####purpose= for checking if any duplicate IP has been added in the DHCP config files########
#########Note:If any new /etc/dhcp/include/dhcpd.conf_static_7  kind of files added add in future,add ipsout7.txt########
#########First run ipcollect.sh for collecting the IP############### 

# List of files containing IP addresses
FILES=("ipsout1.txt" "ipsout3.txt" "ipsout4.txt" "ipsout5.txt" "ipsout6.txt")

# Temporary file to store all IPs
TEMP_FILE="all_ips.txt"

# Clear the temporary file if it exists
> "$TEMP_FILE"

# Extract IP addresses from each file and append to the temporary file
for file in "${FILES[@]}"; do
    echo "Processing file: $file"
    cat "$file" >> "$TEMP_FILE"
done

# Show the contents of the temporary file
echo "Extracted IPs:"
#cat "$TEMP_FILE"

# Sort and find duplicates
echo "Duplicate IP addresses found:"
sort "$TEMP_FILE" | uniq -d

