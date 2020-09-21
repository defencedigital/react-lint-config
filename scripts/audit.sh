#!/usr/bin/env bash
set -uo pipefail

CI="${CI:-false}"

source "./scripts/include.sh"

LICENSE_LIST="$(jq -c -r '.[]' < ./licenses.json)"

if [ "$LICENSE_LIST" == "" ]; then
    exitonfail 1 "License list import"
fi

ALLOWED_LICENSES=""
IFS=$'\n'
for LICENSE in $LICENSE_LIST; do
    ALLOWED_LICENSES="${ALLOWED_LICENSES}${LICENSE};"
done

npx license-checker --onlyAllow "$ALLOWED_LICENSES"
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
