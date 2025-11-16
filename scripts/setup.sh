#!/bin/bash
set -e
CURDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$CURDIR/workspace"
colcon build --parallel-workers 1
source install/setup.bash
echo "Workspace built and sourced."
