#!/bin/sh
set -e

echo "Activating feature 'volta'"

NODE_VERSION=${NODE_VERSION:-}
USERNAME="${_REMOTE_USER:-root}"

USER_HOME=$(getent passwd "$USERNAME" | cut -d: -f6)

if [ -z "$USER_HOME" ]; then
    USER_HOME="/root"
fi

# install Volta
su "$USERNAME" -c "curl https://get.volta.sh | bash"

if [ -n "$NODE_VERSION" ]; then
  su "$USERNAME" -c "$USER_HOME/.volta/bin/volta install node@$NODE_VERSION"
else
  su "$USERNAME" -c "$USER_HOME/.volta/bin/volta install node"
fi

