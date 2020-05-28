#!/usr/bin/env bash

set -eo pipefail

_build/prod/rel/system/bin/system stop > /dev/null 2>&1 || true
rm -rf _build/prod/rel/system/var/log/* > /dev/null 2>&1 || true
MIX_ENV=dev mix compile
MIX_ENV=test mix compile
mix release --overwrite
