#!/bin/bash

set -e

root_dir="$(dirname "$0")/.."

for dir in "$root_dir"/turu-{core,sqlite3,mysql,postgres,snowflake,bigquery} "$root_dir"; do
    pushd "$dir" && uv run task format && popd
done
