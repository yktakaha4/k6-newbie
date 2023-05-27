#!/bin/sh -eu

base_path="$(cd "$(dirname "$0")"; pwd)"
file_path="$base_path/scenarios/$1.js"

test -f "$file_path" || exit 1

k6 run "$file_path"
