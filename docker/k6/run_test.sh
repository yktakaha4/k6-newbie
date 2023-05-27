#!/bin/sh -eu

base_path="$(cd "$(dirname "$0")"; pwd)"

k6 run "$base_path/scenario.js"
