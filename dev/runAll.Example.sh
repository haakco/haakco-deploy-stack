#!/usr/bin/env bash
RUN_DIR=${RUN_DIR:-"$(pwd)"}
export RUN_DIR

VOLUME_LARAVEL_API=$(realpath "${RUN_DIR}/../../haakco-api")
export VOLUME_LARAVEL_API=${VOLUME_LARAVEL_API:-$(realpath "${RUN_DIR}/../../haakco-api")}

VOLUME_DOCKER_DATA=$(realpath "${RUN_DIR}/../../docker-data")
export VOLUME_DOCKER_DATA

export APP_NAME='haakco'
export API_HAAK_COMPANY_NAME="HaakCo"
export API_APP_KEY='base64:2SApI6daXpA8MIDOaOSy6Y9THKwy0Q+K6YLMOH+m6+A='
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

export MINIO_ACCESS_KEY="haakco"
export MINIO_SECRET_KEY="f534e6a4-1db4-11ea-80a1-644bf012e4c4"
export API_MINIO_BUCKET="haakco-laravel"
export VOLUME_MINIO_PORT='db_minio_vol'

##mail relay
export MAIL_RELAY_HOST=${MAIL_RELAY_HOST:-'smtp.mailtrap.io'}
export MAIL_RELAY_PORT=${MAIL_RELAY_PORT:-'465'}
export MAIL_RELAY_SMTP_USER_NAME='smtp_user_name'
export MAIL_RELAY_SMTP_PASS='smtp_user_password'
export VOLUME_MAIL_RELAY='mail-relay-volume'

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

export POSTGRES_DB='haakco'
export POSTGRES_USER='haakco'
export POSTGRES_PASSWORD='kKNdgtok!7b9mCCL!ByY'
export VOLUME_POSTGRESQL_NAME='db_haakco_pgmaster_vol'

export ELK_ELASTICSEARCH_USERNAME='elastic'
export ELK_ELASTICSEARCH_PASSWORD='7qrzE6X*U@yV973YTgRg'
export ELK_FILEBEAT_SHIPPER_NAME="haakco-php-filebeat"
export ELK_METRICBEAT_SHIPPER_NAME="haakco-php-metricbeat"
export VOLUME_ELK_ELASTICSEARCH='db_haakco_elasticsearch'

export API_REDIS_DB='0'
export API_REDIS_PREFIX='haakco_db'
export API_GAMP_TRACKING_ID='G-BCMSM4681K'
export API_TRUSTED_PROXIES='10.0.0.0/8'

#portainer
export PORTAINER_AGENT_SECRET='7x*EJwz6JKCHstQq6nLL'
export VOLUME_PORTAINER='portainer_volume'

## REDIS
export VOLUME_REDIS_DB="db_haak_redis"

./dockerRunBase.sh
