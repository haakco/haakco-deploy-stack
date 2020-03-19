#!/usr/bin/env bash
AWS_PROFILE_NAME="haakco"
AWS_SECRETS_FILE="${HOME}/.aws"

STACK_DIR="$(pwd)"
STACK_DEV_DIR=$(realpath "$STACK_DIR/../")

LE_ETC_DIR="${STACK_DIR}/letsencrypt/etc"
LE_LIB_DIR="${STACK_DIR}/letsencrypt/lib/letsencrypt"

mkdir -p "${LE_ETC_DIR}"
mkdir -p "${LE_LIB_DIR}"

docker run \
  --rm \
  --name certbot \
  -v "${AWS_SECRETS_FILE}:/root/.aws" \
  -v "${LE_ETC_DIR}:/etc/letsencrypt" \
  -v "${LE_LIB_DIR}:/var/lib/letsencrypt" \
  -e "AWS_PROFILE=${AWS_PROFILE_NAME}" \
  certbot/dns-route53 \
  certonly \
  -n \
  --force-renewal \
  --agree-tos \
  --expand \
  --email tim@haak.co \
  --dns-route53 \
  --dns-route53-propagation-seconds 30 \
  --server https://acme-v02.api.letsencrypt.org/directory \
  -d "dev.haak.co" \
  -d "*.dev.haak.co"

cp -f "${LE_ETC_DIR}/live/dev.haak.co/fullchain.pem" "${STACK_DEV_DIR}/stack-files/letsencrypt/dev.fullchain.pem"
cp -f "${LE_ETC_DIR}/live/dev.haak.co/privkey.pem" "${STACK_DEV_DIR}/stack-files/letsencrypt/dev.privkey.pem"
