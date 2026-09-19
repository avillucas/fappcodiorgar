#!/usr/bin/env sh

set -eu

cd "$(dirname "$0")/.."

export VITE_GTM_ID="${VITE_GTM_ID:-GTM-M45MJP52}"

docker compose up -d --build

printf '%s\n' "Aplicacion disponible en http://localhost:8080"
printf '%s\n' "Healthcheck: http://localhost:8080/health"