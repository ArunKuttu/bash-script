#!/bin/bash

#!/bin/bash
####purpose= for checking if any duplicate mac has been added in the DHCP config files########
#########Note:If any new /etc/dhcp/include/dhcpd.conf_static_7  kind of files added add in future,add macs7.txt########
#########First run mac-collect.sh for collecting the IP############### 



# List of files containing MAC addresses
FILES=("macs1.txt"  "macs3.txt" "macs4.txt" "macs5.txt" "macs6.txt")

# Temporary file to store all MAC addresses
TEMP_FILE="all_macs.txt"

# Clear the temporary file if it exists
> "$TEMP_FILE"

# Extract MAC addresses from each file and append to the temporary file
for file in "${FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo "Processing file: $file"
        cat "$file" >> "$TEMP_FILE"
    else
        echo "File not found: $file"
    fi
done

# Show the contents of the temporary file
echo "Extracted MAC addresses:"
#cat "$TEMP_FILE"

# Sort and find duplicates
echo "Duplicate MAC addresses found:"
sort "$TEMP_FILE" | uniq -d

