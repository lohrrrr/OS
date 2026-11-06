#!/usr/bin/env bash
set -euo pipefail

if [[ $(id -u) -ne 0 ]]; then
    printf 'Run with sudo: sudo bash %s\n' "$0" >&2
    exit 1
fi

for group in course-dev course-review; do
    getent group "$group" >/dev/null || groupadd "$group"
done

for user in course-lead course-developer course-qa course-guest; do
    id "$user" >/dev/null 2>&1 || useradd -m -s /bin/bash "$user"
done

usermod -aG course-dev,course-review course-lead
usermod -aG course-dev course-developer
usermod -aG course-review course-qa

install -d -o root -g course-dev -m 2770 /srv/study-api/src
install -d -o root -g course-review -m 2770 /srv/study-api/reports

printf 'Team ready: /srv/study-api/{src,reports}\n'
id course-lead
id course-developer
id course-qa
id course-guest
