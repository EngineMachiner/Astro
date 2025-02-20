#!/bin/bash

date=$( git log -1 --format="%ad" --date=format:"%Y%m%d" )
commit=$( git log -1 --format="%h" )

# Write the Lua script to a file
cat << EOF > info.lua

return {

    VersionDate = "$date",
    ID = "$commit"

}

EOF
