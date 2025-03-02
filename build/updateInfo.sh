#!/bin/bash

date=$( date +'%Y%m%d' )
commit=$( git log -1 --format="%h" )

# Write the Lua script to a file
cat << EOF > info.lua

return {

    VersionDate = "$date",
    ID = "$commit"

}

EOF
