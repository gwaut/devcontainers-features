#!/bin/bash

set -e

source dev-container-features-test-lib

# Feature-specific tests
check "pi-coding-agent installed" bash -c "pi --version" 
check "pi-coding-agent correct version is installed" bash -c "pi --version" | grep "0.85.1"

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults