#!/usr/bin/env bash
DM=docker-machine

RUN_DIR="$(pwd)"

export APP_NAME='haakco'
export APP_NETWORK="${APP_NAME}-net"
export TRAEFIK_NETWORK='traefik-net'

export ADMIN_DOMAIN='dev.haak.co'
export DNS_DOMAIN='dev.haak.co'

export TIME_ZONE='Africa/Johannesburg'

export API_HAAK_COMPANY_NAME="HaakCo"
export API_HAAK_ADMIN_USER="Tim Haak"
export API_HAAK_ADMIN_USER_NAME="timhaak"
export API_HAAK_ADMIN_EMAIL="tim@haak.co"
export API_HAAK_ADMIN_PASSWORD="RuexVeQEvdDNCP"
export API_HAAK_SERVER_ADMIN_EMAIL_NAME="Server Admin"
export API_HAAK_SERVER_ADMIN_EMAIL="serveradmin@haak.co"

#USER
export TRAEFIK_BASIC_USER='haakco'
export TRAEFIK_BASIC_PASSWORD='$$apr1$$nzSK8fmx$$ZJLXWY7EyMCwgYZNpF/Gz/'
#docker run --rm -ti xmartlabs/htpasswd haakco 'ohjCzLxgQvXcMiwXMWAb' | sed -E -e 's/\$/\$\$/g'
#echo $(htpasswd -nb haakco 'ohjCzLxgQvXcMiwXMWAb') | sed -E -e 's/\$/\$\$/g'

#Set to run mysql on remove
#Needs to a docker machine entry
#export DOCKER_MACHINE_SERVER_REMOTE_NAME='dmhobs'
export DOCKER_MACHINE_SERVER_REMOTE_NAME=''
export DOCKER_MACHINE_API_REMOTE_NAME=''

#portainer
export PORTAINER_AGENT_SECRET='7x*EJwz6JKCHstQq6nLL'

export MINIO_ACCESS_KEY='haakco'
export MINIO_SECRET_KEY='f534e6a4-1db4-11ea-80a1-644bf012e4c4'
export MINIO_PORT='9080'

export GOOGLE_DRIVE_CLIENT_ID=''
export GOOGLE_DRIVE_CLIENT_SECRET=''
export GOOGLE_DRIVE_REFRESH_TOKEN=''
export GOOGLE_DRIVE_FOLDER_ID=''
export GOOGLE_DRIVE_TEAM_DRIVE_ID=''


export API_MINIO_ENDPOINT="https://minio.${ADMIN_DOMAIN}:443"
export API_MINIO_BUCKET='haakco-laravel'
export API_MINIO_DEFAULT_REGION='eu-west-1'
export API_MINIO_USE_PATH_STYLE_ENDPOINT='true'


#export API_FILESYSTEM_CLOUD='google'
#export API_FILESYSTEM_CLOUD='s3'
export API_FILESYSTEM_CLOUD='minio'

#postgresql
export POSTGRES_DB='haakco'
export POSTGRES_PORT='5432'
export POSTGRES_USER='haakco'
export POSTGRES_PASSWORD='kKNdgtok!7b9mCCL!ByY'
export POSTGRES_MAX_CONNECTIONS='20'
export POSTGRES_SHARED_BUFFERS='512MB'
export POSTGRES_EFFECTIVE_CACHE_SIZE='1536MB'
export POSTGRES_MAINTENANCE_WORK_MEM='768MB'
export POSTGRES_CHECKPOINT_COMPLETION_TARGET='0.7'
export POSTGRES_WAL_BUFFERS='16MB'
export POSTGRES_DEFAULT_STATISTICS_TARGET='100'
export POSTGRES_RANDOM_PAGE_COST='1.1'
export POSTGRES_EFFECTIVE_IO_CONCURRENCY='200'
export POSTGRES_WORK_MEM='31457kB'
export POSTGRES_MIN_WAL_SIZE='1GB'
export POSTGRES_MAX_WAL_SIZE='2GB'
export POSTGRES_MAX_WORKER_PROCESSES='4'
export POSTGRES_MAX_PARALLEL_WORKERS_PER_GATHER='2'
export POSTGRES_MAX_PARALLEL_WORKERS='4'

#mail relay
export MAIL_RELAY_HOST='smtp.mailtrap.io'
export MAIL_RELAY_PORT='465'
export MAIL_RELAY_SMTP_USER_NAME=''
export MAIL_RELAY_SMTP_PASS=''
export MAIL_RELAY_DOMAIN='haak.co'
export MAIL_RELAY_ALLOWED_SENDER_DOMAINS=''

#elk
export ELK_MEMORY_LIMIT=1600M
export ELK_ES_JAVA_OPTS='-Xms1g -Xmx1g'
export ELK_ELASTICSEARCH_USERNAME='elastic'
export ELK_ELASTIC_PASSWORD='7qrzE6X*U@yV973YTgRg'

#traefik
#ignore below for now
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_REGION='eu-west-1'
export AWS_BUCKET=""
export AWS_URL=""
export AWS_HOSTED_ZONE_ID=""

export TRAEFIK_DOMAIN="${DNS_DOMAIN}"
export VOLUME_TRAEFIK_DIR=$(realpath "${RUN_DIR}/stack-files")
export VOLUME_TRAEFIK_DIR_CERTIFICATE_PEM=$(realpath "${VOLUME_TRAEFIK_DIR}/letsencrypt/dev.fullchain.pem")
export VOLUME_TRAEFIK_DIR_PRIVKEY_PEM=$(realpath "${VOLUME_TRAEFIK_DIR}/letsencrypt/dev.privkey.pem")
export VOLUME_TRAEFIK_TRAEFIK_YAML=$(realpath "${VOLUME_TRAEFIK_DIR}/traefik/traefik.yaml")

export API_APP_NAME="${APP_NAME}"
export API_APP_ENV='local'
export API_APP_KEY='base64:2SApI6daXpA8MIDOaOSy6Y9THKwy0Q+K6YLMOH+m6+A='
export API_APP_URL="https://${DNS_DOMAIN}"
export API_HAAK_SHORT_URL="${API_APP_URL}"
export API_APP_DEBUG="true"
export API_RESPONSE_CACHE_ENABLED="true"
export API_RESPONSE_CACHE_DRIVER="file"

export API_PHP_MEMORY_LIMIT='2G'
export API_PHP_OPCACHE_MEMORY_CONSUMPTION='512'
export API_PHP_OPCACHE_INTERNED_STRINGS_BUFFER='64'
export API_PHP_OPCACHE_MAX_ACCELERATED_FILES='65407'
export API_PHP_OPCACHE_REVALIDATE_PATH='1'
export API_PHP_OPCACHE_ENABLE_FILE_OVERRIDE='0'
export API_PHP_OPCACHE_VALIDATE_TIMESTAMPS='1'
export API_PHP_OPCACHE_REVALIDATE_FREQ='0'
export API_PHP_MAX_EXECUTION_TIME='600'
export API_PHP_MAX_INPUT_TIME='600'

export API_PHP_OPCACHE_PRELOAD_FILE=''
#export API_PHP_OPCACHE_PRELOAD_FILE='/site/web/preload.php'

#export API_CRONTAB_ACTIVE='FALSE'
export API_CRONTAB_ACTIVE='TRUE'
#export API_ENABLE_HORIZON='FALSE'
export API_ENABLE_HORIZON='TRUE'
export API_HORIZON_REDIS_DB='horizon'
export API_HORIZON_WORKERS='5'
export API_HORIZON_LONG_RUNNING_WORKERS='2'
export API_HORIZON_ROUTE='api/v1/horizon'
export API_QUEUE_CONNECTION='redis'

export API_QUEUE_REDIS_DB='queue'
export API_QUEUE_EXPIRE_SECONDS='90'

export API_TELESCOPE_PATH='api/v1/telescope'

export API_DB_CONNECTION='pgsql'

#export API_DB_WRITE_HOST='blue.haak.co'
export API_DB_WRITE_HOST='pgmaster.server'
export API_DB_WRITE_PORT="${POSTGRES_PORT}"

export API_DB_READ_HOST="${API_DB_WRITE_HOST}"
export API_DB_READ_PORT="${API_DB_WRITE_PORT}"

export API_REDIS_HOST='redis.server'
export API_REDIS_PORT='6379'

export API_GAMP_TRACKING_ID='G-BCMSM4681K'

export API_SESSION_DRIVER='redis'
export API_SESSION_CONNECTION='session'
export API_SESSION_LIFETIME='120'

export API_CACHE_DRIVER='redis'

export API_DB_DATABASE="${POSTGRES_DB}"
export API_DB_USERNAME="${POSTGRES_USER}"
export API_DB_PASSWORD="${POSTGRES_PASSWORD}"

export API_MAIL_HOST="${MAIL_RELAY_HOST}"
export API_MAIL_PORT="${MAIL_RELAY_PORT}"
export API_MAIL_USERNAME="${MAIL_RELAY_SMTP_USER_NAME}"
export API_MAIL_PASSWORD="${MAIL_RELAY_SMTP_PASS}"
export API_MAIL_FROM_NAME=''
export API_MAIL_FROM_ADDRESS=''

export API_ENABLE_DEBUG='FALSE'
#export API_ENABLE_DEBUG='TRUE'

#export API_TRUSTED_PROXIES='*'
export API_TRUSTED_PROXIES='10.0.0.0/8'

export API_BROADCAST_DRIVER='pusher'
export API_BROADCAST_PUSHER_APP_ID=''
export API_BROADCAST_PUSHER_APP_KEY=''
export API_BROADCAST_PUSHER_APP_SECRET=''
export API_BROADCAST_PUSHER_APP_CLUSTER='eu'

export API_WEBSOCKET_ACTIVE='FALSE'
export API_LARAVEL_WEBSOCKET_HOST="${DNS_DOMAIN}"
export API_LARAVEL_WEBSOCKET_PORT='6001'
export API_LARAVEL_WEBSOCKET_ENABLE_STATISTICS='true'

export VOLUME_LARAVEL_API=$(realpath "${RUN_DIR}/../../haakco-api")
export VOLUME_LARAVEL_API_ZSH_HISTORY_WEB=$(realpath "${RUN_DIR}/../../docker-data/haakco-api/zsh_history_web")
export VOLUME_LARAVEL_API_ZSH_HISTORY_ROOT=$(realpath "${RUN_DIR}/../../docker-data/haakco-api/zsh_history_root")
export VOLUME_LARAVEL_API_BASH_HISTORY_WEB=$(realpath "${RUN_DIR}/../../docker-data/haakco-api/bash_history_web")
export VOLUME_LARAVEL_API_BASH_HISTORY_ROOT=$(realpath "${RUN_DIR}/../../docker-data/haakco-api/bash_history_root")

mkdir -p "$(dirname "${VOLUME_LARAVEL_API_ZSH_HISTORY_WEB}")"
touch "${VOLUME_LARAVEL_API_ZSH_HISTORY_WEB}"
touch "${VOLUME_LARAVEL_API_ZSH_HISTORY_ROOT}"
touch "${VOLUME_LARAVEL_API_BASH_HISTORY_WEB}"
touch "${VOLUME_LARAVEL_API_BASH_HISTORY_ROOT}"

if [[ -z "${DOCKER_MACHINE_SERVER_REMOTE_NAME}" ]]; then
  eval "$(${DM} env -u)"
else
  eval "$(${DM} env ${DOCKER_MACHINE_SERVER_REMOTE_NAME})"
#  docker stack deploy --compose-file ./stack-files/stack-traefik-server.yml --prune --with-registry-auth haakco-srv-traefik
fi

docker network create -d overlay --subnet=10.44.100.0/24 --attachable "${APP_NETWORK}" &
docker network create -d overlay --subnet=10.44.2.0/24 --attachable "${TRAEFIK_NETWORK}" &

if [[ -z "${DOCKER_MACHINE_API_REMOTE_NAME}" ]]; then
  eval "$(${DM} env -u)"
else
  eval "$(${DM} env ${DOCKER_MACHINE_API_REMOTE_NAME})"
fi

## Fix for strange docker for mac bug :(
#docker network prune -f
#docker system prune -f

#echo "waiting a bit for docker to realise the networks are removed"
#sleep 2

docker network create -d overlay --subnet=10.44.100.0/24 --attachable "${APP_NETWORK}" &
docker network create -d overlay --subnet=10.44.2.0/24 --attachable "${TRAEFIK_NETWORK}" &

sleep 2

#docker plugin install rexray/s3fs \
#  S3FS_OPTIONS="allow_other,use_path_request_style,nonempty,url=http://<minio_endpoint_url>" \
#  S3FS_ENDPOINT="http://<minio_endpoint_url>" \
#  S3FS_ACCESSKEY="<minio_accesskey>" \
#  S3FS_SECRETKEY="<minio_secretkey>"

docker stack deploy --compose-file ./stack-files/stack-traefik.yml --prune --with-registry-auth "${APP_NAME}-traefik" &
docker stack deploy --compose-file ./stack-files/stack-postgresql.yml --prune --with-registry-auth "${APP_NAME}-postgres" &
docker stack deploy --compose-file ./stack-files/stack-redis.yml --prune --with-registry-auth "${APP_NAME}-redis" &
docker stack deploy --compose-file ./stack-files/stack-minio.yml --prune --with-registry-auth "${APP_NAME}-minio" &

docker stack deploy --compose-file ./stack-files/stack-laravel-api.yml --prune --with-registry-auth "${APP_NAME}-laravel" &

#docker stack deploy --compose-file ./stack-files/stack-laravel-api-nfs.yml --prune --with-registry-auth "${APP_NAME}-laravel" &

#
docker stack deploy --compose-file ./stack-files/stack-mail-relay.yml --prune --with-registry-auth "${APP_NAME}-mail-relay" &
docker stack deploy --compose-file ./stack-files/stack-portainer.yml --prune --with-registry-auth "${APP_NAME}-portainer" &
#
docker stack deploy --compose-file ./stack-files/stack-ouroboros.yml --prune --with-registry-auth "${APP_NAME}-ouroboros" &

echo "waiting a bit before starting logging"
sleep 5
docker stack deploy --compose-file ./stack-files/stack-elk.yml --prune --with-registry-auth "${APP_NAME}-elk" &
