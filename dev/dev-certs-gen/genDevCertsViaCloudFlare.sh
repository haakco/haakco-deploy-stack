#!/usr/bin/env bash
CLOUDFLARE_SECRETS_FILE="${HOME}/.secrets/cloudflare.ini"

STACK_DIR="$(pwd)"
STACK_DEV_DIR=$(realpath "$STACK_DIR/../")

LE_ETC_DIR="${STACK_DIR}/letsencrypt/etc"
LE_LIB_DIR="${STACK_DIR}/letsencrypt/lib/letsencrypt"

mkdir -p "${LE_ETC_DIR}"
mkdir -p "${LE_LIB_DIR}"


#  certbot/dns-route53 certonly \
# Remove old certs to get consisten file generation

rm -rf "${LE_ETC_DIR}/live/"

docker run \
  --rm \
  --name certbot \
  -v "${CLOUDFLARE_SECRETS_FILE}:/root/.secrets/cloudflare.ini" \
  -v "${LE_ETC_DIR}:/etc/letsencrypt" \
  -v "${LE_LIB_DIR}:/var/lib/letsencrypt" \
  certbot/dns-cloudflare certonly \
  -n \
  --agree-tos \
  --expand \
  --email cert@haak.co \
  --dns-cloudflare \
  --dns-cloudflare-credentials /root/.secrets/cloudflare.ini \
  --preferred-challenges dns-01 \
  --dns-cloudflare-propagation-seconds 30 \
  --server https://acme-v02.api.letsencrypt.org/directory \
  -d "dev.haak.co" \
  -d "*.dev.haak.co"

unalias cp || true
cp -f "${LE_ETC_DIR}/live/dev.haak.co-0001/fullchain.pem" "${STACK_DEV_DIR}/stack-files/letsencrypt/dev.fullchain.pem"
cp -f "${LE_ETC_DIR}/live/dev.haak.co-0001/privkey.pem" "${STACK_DEV_DIR}/stack-files/letsencrypt/dev.privkey.pem"
