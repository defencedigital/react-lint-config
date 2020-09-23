#!/usr/bin/env bash
set -uo pipefail

CI="${CI:-false}"

source "./scripts/include.sh"

LICENSE_LIST="$(< ./licenses.json jq -c -r '.[]' | tr '\n' ';')"

if [ "$LICENSE_LIST" == "" ]; then
    exitonfail 1 "License list import"
fi

npx license-checker --onlyAllow "$LICENSE_LIST"
exitonfail $? "License check"

yarn audit
EXIT=$?

yarn outdated
warnonfail $? "Checking all dependencies up to date"

if [ $EXIT -gt 3 ]; then
    echo_danger "Security audit failed"
    exit 1
fi
if [ $EXIT -gt 0 ]; then
    echo_warning "Security audit passed with warnings"
    exit 1
fi

echo_success "Audit passed"
