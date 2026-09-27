#!/usr/bin/env sh
# nextendo-ssbu — home-lab launch (SSBU NEX secure server). cert.pem/key.pem and
# nextendo_secret.key ship on this testing branch, so it runs from the repo.
# AUTH_PORT is the console-facing HTTPS auth port (443 in production, behind the
# sni-router); binding 443 needs privilege — override AUTH_PORT for a local run.
set -e
export CERT_FILE="${CERT_FILE:-cert.pem}"
export KEY_FILE="${KEY_FILE:-key.pem}"
export AUTH_PORT="${AUTH_PORT:-443}"
export SECURE_PORT="${SECURE_PORT:-60005}"
export DASH_PORT="${DASH_PORT:-8082}"
export NEXTENDO_SECRET_FILE="${NEXTENDO_SECRET_FILE:-nextendo_secret.key}"
echo "[nextendo-ssbu] auth :$AUTH_PORT  secure udp :$SECURE_PORT  dash :$DASH_PORT"
exec go run .
