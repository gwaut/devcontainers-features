#!/bin/sh
set -e

echo "Activating feature 'pi-coding-agent'"

PI_VERSION=${VERSION:-}
USERNAME="${_REMOTE_USER:-root}"

USER_HOME=$(getent passwd "$USERNAME" | cut -d: -f6)

if [ -z "$USER_HOME" ]; then
    USER_HOME="/root"
fi

# install Pi Coding Agent
su - "$USERNAME" -c "npm install -g --ignore-scripts @earendil-works/pi-coding-agent"

