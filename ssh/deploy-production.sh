#!/usr/bin/env sh

set -eu

command -v gh >/dev/null 2>&1 || {
  printf '%s\n' 'Necesitas instalar y autenticar GitHub CLI: gh auth login' >&2
  exit 1
}

cd "$(dirname "$0")/.."

gh workflow run deploy.yml --ref main

printf '%s\n' 'Despliegue de produccion solicitado para la rama main.'
printf '%s\n' 'Consultar estado: gh run list --workflow deploy.yml --limit 1'