#!/usr/bin/env bash
RUN_DIR=${RUN_DIR:-"$(pwd)"}
export RUN_DIR

VOLUME_LARAVEL_API=$(realpath "${RUN_DIR}/../../haakco-api")
export VOLUME_LARAVEL_API=${VOLUME_LARAVEL_API:-$(realpath "${RUN_DIR}/../../haakco-api")}

export APP_NAME='haakco'
export API_HAAK_COMPANY_NAME="HaakCo"
export DNS_DOMAIN='dev.haak.co'
export API_APP_URL="https://${DNS_DOMAIN}"
export API_APP_ENV="development"
export API_APP_IP_AUTHED_LIST="127.0.0.1,::1"

export API_HAAK_ADMIN_USER="Admin User"
export API_HAAK_ADMIN_USERNAME="adminuser"
export API_HAAK_ADMIN_EMAIL="admin@example.com"
export API_HAAK_ADMIN_PASSWORD="RuexVeQEvdDNCP"

export DOCKER_HUB_USER=""
export DOCKER_HUB_PASS=""
export OUROBOROS_NOTIFIERS=""

##mail relay
export MAIL_RELAY_HOST=${MAIL_RELAY_HOST:-'smtp.mailtrap.io'}
export MAIL_RELAY_PORT=${MAIL_RELAY_PORT:-'465'}
export MAIL_RELAY_SMTP_USER_NAME='smtp_user_name'
export MAIL_RELAY_SMTP_PASS='smtp_user_password'

## If you are using something like https://usehelo.com/ that runs on your pc's localhost
#export MAIL_RELAY_HOST='host.docker.internal'
#export MAIL_RELAY_PORT='2525'
#export API_MAIL_ENCRYPTION='null'
#export MAIL_RELAY_SMTP_USER_NAME='temp'
#export MAIL_RELAY_SMTP_PASS='temp'

export API_MAIL_FROM_ADDRESS="info@${DNS_DOMAIN}"
export API_MAIL_FROM_NAME="${API_HAAK_COMPANY_NAME}"

export API_USE_NFS_MOUNT='FALSE'

export LARAVEL_PASSPORT_PERSONAL_ACCESS_CLIENT_ID='1'
export LARAVEL_PASSPORT_PERSONAL_ACCESS_CLIENT_SECRET='exQXR4RUlvQI5Tt0e1dDntotMN5Sp9qped6n8WsE'

export LARAVEL_PASSPORT_PASSWORD_GRANT_CLIENT_ID='2'
export LARAVEL_PASSPORT_PASSWORD_GRANT_CLIENT_SECRET='fmEatZVcOEdpcRRkbjfNF7wCmOZlKUR89suhdFGx'

export ENABLE_LARAVEL_ECHO_SERVER='TRUE'
export API_BROADCAST_PUSHER_APP_KEY='80ac6b02fe726205c405'
export LARAVEL_ECHO_API_ORIGIN_ALLOW_CORS='true'

./dockerRunBase.sh
