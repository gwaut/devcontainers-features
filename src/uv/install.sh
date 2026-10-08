#!/bin/sh
set -e

echo "Activating feature 'uv'"

UV_VERSION=${UV_VERSION:-}
USERNAME="${_REMOTE_USER:-root}"

USER_HOME=$(getent passwd "$USERNAME" | cut -d: -f6)

if [ -z "$USER_HOME" ]; then
    USER_HOME="/root"
fi

# install uv
if [ -n "$UV_VERSION" ]; then
  su - "$USERNAME" -c "curl -LsSf https://astral.sh/uv/$UV_VERSION/install.sh | sh"
else
  su - "$USERNAME" -c "curl -LsSf https://astral.sh/uv/install.sh | sh"
fi