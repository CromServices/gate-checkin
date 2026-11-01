#!/bin/sh
# CI check: no secrets or endpoints baked in, only the expected files.
set -e
! grep -RInE 'AKfycb[A-Za-z0-9_-]{20,}|gh[opsu]_[A-Za-z0-9]{20,}|EAA[A-Za-z0-9]{20,}' --exclude=check.sh --exclude-dir=.git .
grep -q "ID_RE=/^AKfycb" index.html
echo OK
