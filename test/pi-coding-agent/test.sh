#!/bin/bash

set -e

source dev-container-features-test-lib

check "pi-coding-agent is installed" bash -c "command -v pi"
check "pi-coding-agent reports its version" pi --version

reportResults
