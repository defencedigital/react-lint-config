#!/usr/bin/env bash
set -eu

# Assume this script is in the src directory and work from that location
PROJECT_ROOT="$(cd "$(dirname "$0")" && pwd)"

source "$PROJECT_ROOT/scripts/include.sh"

exec_in_container ./scripts/static_analysis.sh "$@"
