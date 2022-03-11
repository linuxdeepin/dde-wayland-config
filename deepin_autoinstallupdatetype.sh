#!/bin/bash

export SYSTEM_EDITION=$([ -f /etc/os-version ] && grep Community /etc/os-version | awk -F= '{print $2}')

if [ 'x'$SYSTEM_EDITION == "xCommunity" ]
then
    if grep "\"AutoInstallUpdateType\":16" config.json >> /dev/null
    then
        sed -i 's|"AutoInstallUpdateType":16|"AutoInstallUpdateType":1|g' config.json

    elif grep "\"AutoInstallUpdateType\":8" config.json >> /dev/null
    then
        sed -i 's|"AutoInstallUpdateType":8|"AutoInstallUpdateType":1|g' config.json

    elif grep "\"AutoInstallUpdateType\":1" config.json >> /dev/null
    then
        echo "done"

    else
        sed -i 's|}|, "AutoInstallUpdateType":1}|g' config.json
    fi
fi
