#!/bin/sh

set -e

# download current version
echo "Installing ansible-wrapper into current directory"

download() {
    if ! wget -qO ansiblew https://raw.githubusercontent.com/flachnetz/ansiblew/master/ansiblew ; then
        return 1
    fi

    if ! wget -qO ansiblew.json https://raw.githubusercontent.com/flachnetz/ansiblew/master/ansiblew.json ; then
        return 2
    fi

    chmod 755 ansiblew
    return $?
}

if download ; then
    echo "Installed successfully."
else
    echo "Failed to install ansible-wrapper ¯\_(ツ)_/¯"
    exit 1
fi
