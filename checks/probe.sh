#!/bin/sh
set -e
H=http://web
# The demo company logs in (demo / demo) and gets its access token cookie.
curl -sS -o /dev/null -D - -d 'username=demo&password=demo' "$H/token" | grep -qi 'set-cookie: access_token'
