#!/bin/bash

# FUNCTION
# Give edit access to specific file to specific user / group.
# Run with argument = file ID and email of new edit user or hardcode new edit user in "give_to"


# IMPORTANT
# "gam" has to point to your path to GAM, by defoult just fix your username, modify whole path if your instalation is custom.

# Eg. Command to run: sh give_file_to.sh oihfoi3nfjn3esadanfj3e IT@github.com

# >>> Actuall start of code here <<<

gam="/home/your_username_here/bin/gamadv-xtd/gam"
fileID=$1
give_to=$2

# Uncomment next line and comment "give_to=$2" to hard code where access will be given.
# give_to="hardcoded_address_here"

# Check file owner
owner_info=$($gam show ownership $fileID)

# Take just owner email address from reponce
file_owner=$(echo $owner_info | awk '{print substr($2, 1, length($2)-1)}')

# Give edit access to new user
change=$($gam user $file_owner add drivefileacl $fileID user $give_to role writer)

# Echo responce for conformation
echo $change
