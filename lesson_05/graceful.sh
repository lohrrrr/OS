#!/usr/bin/env bash
set -euo pipefail

temporary_file=$(mktemp "${TMPDIR:-/tmp}/graceful.XXXXXX")
printf '%s\n' "$temporary_file"
trap 'rm -f -- "$temporary_file"; exit 0' TERM

while :; do
    sleep 1
done
