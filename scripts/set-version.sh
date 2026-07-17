#!/bin/bash

set -euo pipefail

version="${1#v}"
packages=(turu-core turu-sqlite3 turu-mysql turu-postgres turu-snowflake turu-bigquery turu)
adapters=(turu-sqlite3 turu-mysql turu-postgres turu-snowflake turu-bigquery)

for package in "${packages[@]}"; do
    uv version --package "$package" "$version" --frozen
done

for package in "${adapters[@]}"; do
    uv add --package "$package" "turu-core==$version" --frozen
done

uv add --package turu "turu-core==$version" --frozen
uv add --package turu "turu-sqlite3==$version" --optional sqlite3 --frozen
uv add --package turu "turu-mysql==$version" --optional mysql --frozen
uv add --package turu "turu-postgres==$version" --optional postgres --frozen
uv add --package turu "turu-snowflake==$version" --optional snowflake --frozen
uv add --package turu "turu-bigquery==$version" --optional bigquery --frozen
