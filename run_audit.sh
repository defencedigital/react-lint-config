#!/usr/bin/env bash
set -euo pipefail

# Assume this script is in the src directory and work from that location
PROJECT_ROOT="$(cd "$(dirname "$0")" && pwd)"

IMAGE_NAME="tmp-$(basename -- $PROJECT_ROOT)-image"

pushd "${PROJECT_ROOT}"

docker build -t "$IMAGE_NAME" .

docker run --rm -t -u=$(id -u):$(id -g) --name "$IMAGE_NAME" \
    "$IMAGE_NAME" ./scripts/audit.sh

popd
