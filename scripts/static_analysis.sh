#!/usr/bin/env bash
set -uo pipefail

source "./scripts/include.sh"

shellcheck ./*.sh
exitonfail $? "shellcheck"

shellcheck ./scripts/*.sh
exitonfail $? "shellcheck"

hadolint Dockerfile
exitonfail $? "hadolint"

echo_success "Static analysis passed"
