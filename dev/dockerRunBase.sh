#!/usr/bin/env bash
export DM=docker-machine

RUN_DIR=${RUN_DIR:-"$(pwd)"}
export RUN_DIR

export APP_NAME=${APP_NAME:-'haakco'}
export APP_NETWORK=${APP_NETWORK:-"${APP_NAME}-net"}
export TRAEFIK_NETWORK=${TRAEFIK_NETWORK:-'traefik-net'}

export ADMIN_DOMAIN=${ADMIN_DOMAIN:-'dev.haak.co'}
export DNS_DOMAIN=${DNS_DOMAIN:-'dev.haak.co'}

export TIME_ZONE=${TIME_ZONE:-'Africa/Johannesburg'}

export DOCKER_HUB_USER=${DOCKER_HUB_USER:-''}
export DOCKER_HUB_PASS=${DOCKER_HUB_PASS:-''}

export OUROBOROS_DOCKER_HUB_REPO_USER=${OUROBOROS_DOCKER_HUB_REPO_USER:-"${DOCKER_HUB_USER}"}
export OUROBOROS_DOCKER_HUB_REPO_PASS=${OUROBOROS_DOCKER_HUB_REPO_PASS:-"${DOCKER_HUB_PASS}"}
export OUROBOROS_NOTIFIERS=${OUROBOROS_NOTIFIERS:-""}

export API_USE_NFS_MOUNT=${API_USE_NFS_MOUNT:-"FALSE"}

export API_HAAK_COMPANY_NAME=${API_HAAK_COMPANY_NAME:-"HaakCo"}
export API_HAAK_ADMIN_USER=${API_HAAK_ADMIN_USER:-"Admin User"}
export API_HAAK_ADMIN_USERNAME=${API_HAAK_ADMIN_USERNAME:-"adminuser"}
export API_HAAK_ADMIN_EMAIL=${API_HAAK_ADMIN_EMAIL:-"admin@example.com"}
export API_HAAK_ADMIN_PASSWORD=${API_HAAK_ADMIN_PASSWORD:-"RuexVeQEvdDNCP"}
export API_HAAK_SERVER_ADMIN_EMAIL_NAME=${API_HAAK_SERVER_ADMIN_EMAIL_NAME:-"Server Admin"}
export API_HAAK_SERVER_ADMIN_EMAIL=${API_HAAK_SERVER_ADMIN_EMAIL:-"serveradmin@haak.co"}

export API_HAAK_REGISTRATION_ENABLED=${API_HAAK_REGISTRATION_ENABLED:-"true"}

#USER
export TRAEFIK_BASIC_USER=${TRAEFIK_BASIC_USER:-'haakco'}
export TRAEFIK_BASIC_PASSWORD=${TRAEFIK_BASIC_PASSWORD:-'$$apr1$$nzSK8fmx$$ZJLXWY7EyMCwgYZNpF/Gz/'}
#docker run --rm -ti xmartlabs/htpasswd haakco 'ohjCzLxgQvXcMiwXMWAb' | sed -E -e 's/\$/\$\$/g'
#echo $(htpasswd -nb haakco 'ohjCzLxgQvXcMiwXMWAb') | sed -E -e 's/\$/\$\$/g'

#Set to run mysql on remove
#Needs to a docker machine entry
#export DOCKER_MACHINE_SERVER_REMOTE_NAME=${DOCKER_MACHINE_SERVER_REMOTE_NAME:-'dmhobs'}
export DOCKER_MACHINE_SERVER_REMOTE_NAME=${DOCKER_MACHINE_SERVER_REMOTE_NAME:-''}
export DOCKER_MACHINE_API_REMOTE_NAME=${DOCKER_MACHINE_API_REMOTE_NAME:-''}

#portainer
export PORTAINER_AGENT_SECRET=${PORTAINER_AGENT_SECRET:-'7x*EJwz6JKCHstQq6nLL'}
export VOLUME_PORTAINER=${VOLUME_PORTAINER:-'portainer_volume'}

export MINIO_ACCESS_KEY=${MINIO_ACCESS_KEY:-'haakco'}
export MINIO_SECRET_KEY=${MINIO_SECRET_KEY:-'f534e6a4-1db4-11ea-80a1-644bf012e4c4'}
export MINIO_PORT=${MINIO_PORT:-'9080'}
export VOLUME_MINIO=${VOLUME_MINIO:-'db_minio_vol'}

export GOOGLE_DRIVE_CLIENT_ID=${GOOGLE_DRIVE_CLIENT_ID:-''}
export GOOGLE_DRIVE_CLIENT_SECRET=${GOOGLE_DRIVE_CLIENT_SECRET:-''}
export GOOGLE_DRIVE_REFRESH_TOKEN=${GOOGLE_DRIVE_REFRESH_TOKEN:-''}
export GOOGLE_DRIVE_FOLDER_ID=${GOOGLE_DRIVE_FOLDER_ID:-''}
export GOOGLE_DRIVE_TEAM_DRIVE_ID=${GOOGLE_DRIVE_TEAM_DRIVE_ID:-''}


export API_MINIO_ENDPOINT=${API_MINIO_ENDPOINT:-"https://minio.${ADMIN_DOMAIN}:443"}
export API_MINIO_BUCKET=${API_MINIO_BUCKET:-'haakco-laravel'}
export API_MINIO_DEFAULT_REGION=${API_MINIO_DEFAULT_REGION:-'eu-west-1'}
export API_MINIO_USE_PATH_STYLE_ENDPOINT=${API_MINIO_USE_PATH_STYLE_ENDPOINT:-'true'}


#export API_FILESYSTEM_CLOUD=${API_FILESYSTEM_CLOUD:-'google'}
#export API_FILESYSTEM_CLOUD=${API_FILESYSTEM_CLOUD:-'s3'}
export API_FILESYSTEM_CLOUD=${API_FILESYSTEM_CLOUD:-'minio'}
export API_FILESYSTEM_CLOUD_CACHE_TIME=${API_FILESYSTEM_CLOUD_CACHE_TIME:-'3600'}

#postgresql
export POSTGRES_DB=${POSTGRES_DB:-'haakco'}
export POSTGRES_PORT=${POSTGRES_PORT:-'5432'}
export POSTGRES_USER=${POSTGRES_USER:-'haakco'}
export POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-'kKNdgtok!7b9mCCL!ByY'}
export POSTGRES_MAX_CONNECTIONS=${POSTGRES_MAX_CONNECTIONS:-'20'}
export POSTGRES_SHARED_BUFFERS=${POSTGRES_SHARED_BUFFERS:-'512MB'}
export POSTGRES_EFFECTIVE_CACHE_SIZE=${POSTGRES_EFFECTIVE_CACHE_SIZE:-'1536MB'}
export POSTGRES_MAINTENANCE_WORK_MEM=${POSTGRES_MAINTENANCE_WORK_MEM:-'768MB'}
export POSTGRES_CHECKPOINT_COMPLETION_TARGET=${POSTGRES_CHECKPOINT_COMPLETION_TARGET:-'0.7'}
export POSTGRES_WAL_BUFFERS=${POSTGRES_WAL_BUFFERS:-'16MB'}
export POSTGRES_DEFAULT_STATISTICS_TARGET=${POSTGRES_DEFAULT_STATISTICS_TARGET:-'100'}
export POSTGRES_RANDOM_PAGE_COST=${POSTGRES_RANDOM_PAGE_COST:-'1.1'}
export POSTGRES_EFFECTIVE_IO_CONCURRENCY=${POSTGRES_EFFECTIVE_IO_CONCURRENCY:-'200'}
export POSTGRES_WORK_MEM=${POSTGRES_WORK_MEM:-'31457kB'}
export POSTGRES_MIN_WAL_SIZE=${POSTGRES_MIN_WAL_SIZE:-'1GB'}
export POSTGRES_MAX_WAL_SIZE=${POSTGRES_MAX_WAL_SIZE:-'2GB'}
export POSTGRES_MAX_WORKER_PROCESSES=${POSTGRES_MAX_WORKER_PROCESSES:-'4'}
export POSTGRES_MAX_PARALLEL_WORKERS_PER_GATHER=${POSTGRES_MAX_PARALLEL_WORKERS_PER_GATHER:-'2'}
export POSTGRES_MAX_PARALLEL_WORKERS=${POSTGRES_MAX_PARALLEL_WORKERS:-'4'}
export VOLUME_POSTGRESQL_NAME=${VOLUME_POSTGRESQL_NAME:-'db_haakco_pgmaster_vol'}

#mail relay
export MAIL_RELAY_HOST=${MAIL_RELAY_HOST:-'smtp.mailtrap.io'}
export MAIL_RELAY_PORT=${MAIL_RELAY_PORT:-'465'}
export MAIL_RELAY_SMTP_USER_NAME=${MAIL_RELAY_SMTP_USER_NAME:-''}
export MAIL_RELAY_SMTP_PASS=${MAIL_RELAY_SMTP_PASS:-''}
export MAIL_RELAY_DOMAIN=${MAIL_RELAY_DOMAIN:-'haak.co'}
export MAIL_RELAY_ALLOWED_SENDER_DOMAINS=${MAIL_RELAY_ALLOWED_SENDER_DOMAINS:-''}
export VOLUME_MAIL_RELAY=${VOLUME_MAIL_RELAY:-'mail-relay-volume'}

#elk
export ELK_MEMORY_LIMIT=${ELK_MEMORY_LIMIT:-1600M}
export ELK_ES_JAVA_OPTS=${ELK_ES_JAVA_OPTS:-'-Xms1g -Xmx1g'}
export ELK_ELASTICSEARCH_USERNAME=${ELK_ELASTICSEARCH_USERNAME:-'elastic'}
export ELK_ELASTICSEARCH_PASSWORD=${ELK_ELASTICSEARCH_PASSWORD:-'7qrzE6X*U@yV973YTgRg'}
export VOLUME_ELK_ELASTICSEARCH=${VOLUME_ELK_ELASTICSEARCH:-'db_haakco_elasticsearch'}

export ELK_ENVIROMENT=${ELK_ENVIROMENT:-"${API_APP_ENV}"}
export ELK_FILEBEAT_SHIPPER_NAME=${ELK_FILEBEAT_SHIPPER_NAME:-"haakco-php-filebeat"}
export ELK_METRICBEAT_SHIPPER_NAME=${ELK_METRICBEAT_SHIPPER_NAME:-"haakco-php-metricbeat"}
export ELK_KIBANA_HOST=${ELK_KIBANA_HOST:-"http://kibana.server:5601"}
export ELK_KIBANA_PROTOCOL=${ELK_KIBANA_PROTOCOL:-"http"}
export ELK_KIBANA_USERNAME=${ELK_KIBANA_USERNAME:-"${ELK_ELASTICSEARCH_USERNAME}"}
export ELK_KIBANA_PASSWORD=${ELK_KIBANA_PASSWORD:-"${ELK_ELASTICSEARCH_PASSWORD}"}
export ELK_ELASTIC_HOST=${ELK_ELASTIC_HOST:-"http://elasticsearch.server:9200"}
export ELK_ELASTIC_PROTOCOL=${ELK_ELASTIC_PROTOCOL:-"http"}
export ELK_ELASTIC_USERNAME=${ELK_ELASTIC_USERNAME:-"${ELK_ELASTICSEARCH_USERNAME}"}
export ELK_ELASTIC_PASSWORD=${ELK_ELASTIC_PASSWORD:-"${ELK_ELASTICSEARCH_PASSWORD}"}

export ELK_METRICBEAT_ACTIVE=${ELK_METRICBEAT_ACTIVE:-"TRUE"}
export ELK_FILEBEAT_ACTIVE=${ELK_FILEBEAT_ACTIVE:-"TRUE"}

#ignore below for now
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-""}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-""}
export AWS_REGION=${AWS_REGION:-'eu-west-1'}
export AWS_BUCKET=${AWS_BUCKET:-""}
export AWS_URL=${AWS_URL:-""}
export AWS_HOSTED_ZONE_ID=${AWS_HOSTED_ZONE_ID:-""}

export TRAEFIK_DOMAIN=${TRAEFIK_DOMAIN:-"${DNS_DOMAIN}"}
export VOLUME_TRAEFIK_DIR=${VOLUME_TRAEFIK_DIR:-$(realpath "${RUN_DIR}/stack-files")}
export VOLUME_TRAEFIK_DIR_CERTIFICATE_PEM=${VOLUME_TRAEFIK_DIR_CERTIFICATE_PEM:-$(realpath "${VOLUME_TRAEFIK_DIR}/letsencrypt/dev.fullchain.pem")}
export VOLUME_TRAEFIK_DIR_PRIVKEY_PEM=${VOLUME_TRAEFIK_DIR_PRIVKEY_PEM:-$(realpath "${VOLUME_TRAEFIK_DIR}/letsencrypt/dev.privkey.pem")}
export VOLUME_TRAEFIK_TRAEFIK_YAML=${VOLUME_TRAEFIK_TRAEFIK_YAML:-$(realpath "${VOLUME_TRAEFIK_DIR}/traefik/traefik.yaml")}

export API_APP_NAME=${API_APP_NAME:-"${APP_NAME}"}
export API_APP_ENV=${API_APP_ENV:-'local'}
export API_APP_KEY=${API_APP_KEY:-'base64:2SApI6daXpA8MIDOaOSy6Y9THKwy0Q+K6YLMOH+m6+A='}
export API_APP_URL=${API_APP_URL:-"https://${DNS_DOMAIN}"}
export API_HAAK_IP_AUTHED_LIST=${API_HAAK_IP_AUTHED_LIST:-"127.0.0.1,::1"}
export API_HAAK_SHORT_URL=${API_HAAK_SHORT_URL:-"${API_APP_URL}"}
export API_APP_DEBUG=${API_APP_DEBUG:-"true"}
export API_RESPONSE_CACHE_ENABLED=${API_RESPONSE_CACHE_ENABLED:-"true"}
export API_RESPONSE_CACHE_DRIVER=${API_RESPONSE_CACHE_DRIVER:-"file"}

export API_PHP_MEMORY_LIMIT=${API_PHP_MEMORY_LIMIT:-'3G'}
export API_PHP_OPCACHE_MEMORY_CONSUMPTION=${API_PHP_OPCACHE_MEMORY_CONSUMPTION:-'512'}
export API_PHP_OPCACHE_INTERNED_STRINGS_BUFFER=${API_PHP_OPCACHE_INTERNED_STRINGS_BUFFER:-'64'}
export API_PHP_OPCACHE_MAX_ACCELERATED_FILES=${API_PHP_OPCACHE_MAX_ACCELERATED_FILES:-'65407'}
export API_PHP_OPCACHE_REVALIDATE_PATH=${API_PHP_OPCACHE_REVALIDATE_PATH:-'1'}
export API_PHP_OPCACHE_ENABLE_FILE_OVERRIDE=${API_PHP_OPCACHE_ENABLE_FILE_OVERRIDE:-'0'}
export API_PHP_OPCACHE_VALIDATE_TIMESTAMPS=${API_PHP_OPCACHE_VALIDATE_TIMESTAMPS:-'1'}
export API_PHP_OPCACHE_REVALIDATE_FREQ=${API_PHP_OPCACHE_REVALIDATE_FREQ:-'0'}
export API_PHP_MAX_EXECUTION_TIME=${API_PHP_MAX_EXECUTION_TIME:-'600'}
export API_PHP_MAX_INPUT_TIME=${API_PHP_MAX_INPUT_TIME:-'600'}

export API_PHP_OPCACHE_PRELOAD_FILE=${API_PHP_OPCACHE_PRELOAD_FILE:-''}
#export API_PHP_OPCACHE_PRELOAD_FILE=${API_PHP_OPCACHE_PRELOAD_FILE:-'/site/web/preload.php'}

#export API_CRONTAB_ACTIVE=${API_CRONTAB_ACTIVE:-'FALSE'}
export API_CRONTAB_ACTIVE=${API_CRONTAB_ACTIVE:-'TRUE'}
#export API_ENABLE_HORIZON=${API_ENABLE_HORIZON:-'FALSE'}
export API_ENABLE_HORIZON=${API_ENABLE_HORIZON:-'TRUE'}
export API_HORIZON_WORKERS=${API_HORIZON_WORKERS:-'5'}
export API_HORIZON_LONG_RUNNING_WORKERS=${API_HORIZON_LONG_RUNNING_WORKERS:-'2'}
export API_HORIZON_ROUTE=${API_HORIZON_ROUTE:-'api/v1/horizon'}
export API_QUEUE_CONNECTION=${API_QUEUE_CONNECTION:-'redis'}

export API_QUEUE_EXPIRE_SECONDS=${API_QUEUE_EXPIRE_SECONDS:-'90'}

export API_TELESCOPE_PATH=${API_TELESCOPE_PATH:-'api/v1/telescope'}

export API_DB_CONNECTION=${API_DB_CONNECTION:-'pgsql'}

#export API_DB_WRITE_HOST=${API_DB_WRITE_HOST:-'blue.haak.co'}
export API_DB_WRITE_HOST=${API_DB_WRITE_HOST:-'pgmaster.server'}
export API_DB_WRITE_PORT=${API_DB_WRITE_PORT:-"${POSTGRES_PORT}"}

export API_DB_READ_HOST=${API_DB_READ_HOST:-"${API_DB_WRITE_HOST}"}
export API_DB_READ_PORT=${API_DB_READ_PORT:-"${API_DB_WRITE_PORT}"}

export API_REDIS_HOST=${API_REDIS_HOST:-'redis.server'}
export API_REDIS_PORT=${API_REDIS_PORT:-'6379'}

# If you want to have the different Redis's to have there own db (similar to schemas)
export API_REDIS_DB=${API_REDIS_DB:-'0'}
export API_REDIS_PREFIX=${API_REDIS_PREFIX:-'haakco_db'}
export API_REDIS_SESSION_DB=${API_REDIS_SESSION_DB:-"${API_REDIS_DB}"}
export API_REDIS_SESSION_PREFIX=${API_REDIS_SESSION_PREFIX:-"${API_REDIS_PREFIX}"}
export API_REDIS_CACHE_DB=${API_REDIS_CACHE_DB:-"${API_REDIS_DB}"}
export API_REDIS_CACHE_PREFIX=${API_REDIS_CACHE_PREFIX:-"${API_REDIS_PREFIX}"}
export API_REDIS_HORIZON_DB=${API_REDIS_HORIZON_DB:-"${API_REDIS_DB}"}
export API_REDIS_HORIZON_PREFIX=${API_REDIS_HORIZON_PREFIX:-"${API_REDIS_PREFIX}"}
export API_REDIS_QUEUE_DB=${API_REDIS_QUEUE_DB:-"${API_REDIS_DB}"}
export API_REDIS_QUEUE_PREFIX=${API_REDIS_QUEUE_PREFIX:-"${API_REDIS_PREFIX}"}
export API_REDIS_BROADCAST_DB=${API_REDIS_BROADCAST_DB:-"${API_REDIS_DB}"}
export API_REDIS_BROADCAST_PREFIX=${API_REDIS_BROADCAST_PREFIX:-"${API_REDIS_PREFIX}"}

export API_GAMP_TRACKING_ID=${API_GAMP_TRACKING_ID:-'G-BCMSM4681K'}

export API_SESSION_DRIVER=${API_SESSION_DRIVER:-'redis'}
export API_SESSION_CONNECTION=${API_SESSION_CONNECTION:-'session'}
export API_SESSION_LIFETIME=${API_SESSION_LIFETIME:-'120'}

export API_CACHE_DRIVER=${API_CACHE_DRIVER:-'redis'}

export API_DB_DATABASE=${API_DB_DATABASE:-"${POSTGRES_DB}"}
export API_DB_USERNAME=${API_DB_USERNAME:-"${POSTGRES_USER}"}
export API_DB_PASSWORD=${API_DB_PASSWORD:-"${POSTGRES_PASSWORD}"}

export API_MAIL_HOST=${API_MAIL_HOST:-"${MAIL_RELAY_HOST}"}
export API_MAIL_PORT=${API_MAIL_PORT:-"${MAIL_RELAY_PORT}"}
export API_MAIL_USERNAME=${API_MAIL_USERNAME:-"${MAIL_RELAY_SMTP_USER_NAME}"}
export API_MAIL_PASSWORD=${API_MAIL_PASSWORD:-"${MAIL_RELAY_SMTP_PASS}"}
export API_MAIL_FROM_NAME=${API_MAIL_FROM_NAME:-"info@${DNS_DOMAIN}"}
export API_MAIL_FROM_ADDRESS=${API_MAIL_FROM_ADDRESS:-"${API_HAAK_COMPANY_NAME}"}
export API_MAIL_ENCRYPTION=${API_MAIL_ENCRYPTION:-'tls'}

export API_ENABLE_DEBUG=${API_ENABLE_DEBUG:-'FALSE'}
#export API_ENABLE_DEBUG=${API_ENABLE_DEBUG:-'TRUE'}

#export API_TRUSTED_PROXIES=${API_TRUSTED_PROXIES:-'*'}
export API_TRUSTED_PROXIES=${API_TRUSTED_PROXIES:-'10.0.0.0/8'}

export ENABLE_LARAVEL_ECHO_SERVER=${ENABLE_LARAVEL_ECHO_SERVER:-'FALSE'}

export API_BROADCAST_DRIVER=${API_BROADCAST_DRIVER:-'pusher'}
export API_BROADCAST_PUSHER_APP_ID=${API_BROADCAST_PUSHER_APP_ID:-"${APP_NAME}"}
export API_BROADCAST_PUSHER_APP_KEY=${API_BROADCAST_PUSHER_APP_KEY:-'80ac6b02fe726205c405'}
export API_BROADCAST_PUSHER_APP_SECRET=${API_BROADCAST_PUSHER_APP_SECRET:-''}
export API_BROADCAST_PUSHER_APP_CLUSTER=${API_BROADCAST_PUSHER_APP_CLUSTER:-'eu'}
export API_BROADCAST_PUSHER_HOST=${API_BROADCAST_PUSHER_HOST:-'laravel-echo-server.server'}
export API_BROADCAST_PUSHER_PORT=${API_BROADCAST_PUSHER_PORT:-'6001'}

export API_APM_ACTIVE=${API_APM_ACTIVE:-"false"}
export API_APM_APPNAME=${API_APM_APPNAME:-"${API_APP_NAME}"}
export API_APM_ENVIRONMENT=${API_APM_ENVIRONMENT:-"${API_APP_ENV}"}
export API_APM_APPVERSION=${API_APM_APPVERSION:-"1.0.0"}
export API_APM_SERVERURL=${API_APM_SERVERURL:-""}
export API_APM_SECRETTOKEN=${API_APM_SECRETTOKEN:-""}

export LARAVEL_ECHO_AUTH_HOST=${LARAVEL_ECHO_AUTH_HOST:-"http://laravel.server"}
export LARAVEL_ECHO_AUTH_ENDPOINT=${LARAVEL_ECHO_AUTH_ENDPOINT:-"/api/v1/broadcasting/auth"}
export LARAVEL_ECHO_CLIENTS_DEFAULT_CONFIG='{"appId": "'${API_BROADCAST_PUSHER_APP_ID}'","key": "'${API_BROADCAST_PUSHER_APP_KEY}'"}'
export LARAVEL_ECHO_CLIENTS=${LARAVEL_ECHO_CLIENTS:-"${LARAVEL_ECHO_CLIENTS_DEFAULT_CONFIG}"}
export LARAVEL_ECHO_DB_TYPE=${LARAVEL_ECHO_DB_TYPE:-'redis'}
export LARAVEL_ECHO_DB_CONFIG_REDIS_HOST=${LARAVEL_ECHO_DB_CONFIG_REDIS_HOST:-"${API_REDIS_HOST}"}
export LARAVEL_ECHO_DB_CONFIG_REDIS_PORT=${LARAVEL_ECHO_DB_CONFIG_REDIS_PORT:-"${API_REDIS_PORT}"}
export LARAVEL_ECHO_DB_CONFIG_REDIS_KEY_PREFIX=${LARAVEL_ECHO_DB_CONFIG_REDIS_KEY_PREFIX:-'laravel_echo_database_'}
export LARAVEL_ECHO_DB_CONFIG_REDIS_OPTIONS_DB_BACKEND=${LARAVEL_ECHO_DB_CONFIG_REDIS_OPTIONS_DB_BACKEND:-"${API_REDIS_DB}"}
export LARAVEL_ECHO_DB_CONFIG_SQLITE_DB_PATH=${LARAVEL_ECHO_DB_CONFIG_SQLITE_DB_PATH:-'/app/database/laravel-echo-server.sqlite'}
export LARAVEL_ECHO_DB_CONFIG_PUBLISH_PRESENCE=${LARAVEL_ECHO_DB_CONFIG_PUBLISH_PRESENCE:-'true'}
export LARAVEL_ECHO_DEV_MODE=${LARAVEL_ECHO_DEV_MODE:-'true'}
export LARAVEL_ECHO_HOST=${LARAVEL_ECHO_HOST:-'null'}
export LARAVEL_ECHO_PORT=${LARAVEL_ECHO_PORT:-"${API_BROADCAST_PUSHER_PORT}"}
export LARAVEL_ECHO_PROTO=${LARAVEL_ECHO_PROTO:-'http'}
export LARAVEL_ECHO_SUBSCRIBERS_HTTP=${LARAVEL_ECHO_SUBSCRIBERS_HTTP:-'true'}
export LARAVEL_ECHO_SUBSCRIBERS_REDIS=${LARAVEL_ECHO_SUBSCRIBERS_REDIS:-'true'}
export LARAVEL_ECHO_API_ORIGIN_ALLOW_CORS=${LARAVEL_ECHO_API_ORIGIN_ALLOW_CORS:-'false'}
export LARAVEL_ECHO_API_ORIGIN_ALLOW_ORIGIN=${LARAVEL_ECHO_API_ORIGIN_ALLOW_ORIGIN:-'*'}
export LARAVEL_ECHO_API_ORIGIN_ALLOW_METHODS=${LARAVEL_ECHO_API_ORIGIN_ALLOW_METHODS:-'GET, OPTION, POST'}
export LARAVEL_ECHO_API_ORIGIN_ALLOW_HEADERS=${LARAVEL_ECHO_API_ORIGIN_ALLOW_HEADERS:-'Accept, Authorization, Content-Type, Origin, X-Auth-Token, X-CSRF-TOKEN, X-Requested-With, X-Socket-Id'}

export LARAVEL_PASSPORT_PERSONAL_ACCESS_CLIENT_ID=${LARAVEL_PASSPORT_PERSONAL_ACCESS_CLIENT_ID:-'1'}
export LARAVEL_PASSPORT_PERSONAL_ACCESS_CLIENT_SECRET=${LARAVEL_PASSPORT_PERSONAL_ACCESS_CLIENT_SECRET:-'exQXR4RUlvQI5Tt0e1dDntotMN5Sp9qped6n8WsE'}
export LARAVEL_PASSPORT_PASSWORD_GRANT_CLIENT_ID=${LARAVEL_PASSPORT_PASSWORD_GRANT_CLIENT_ID:-'2'}
export LARAVEL_PASSPORT_PASSWORD_GRANT_CLIENT_SECRET=${LARAVEL_PASSPORT_PASSWORD_GRANT_CLIENT_SECRET:-'fmEatZVcOEdpcRRkbjfNF7wCmOZlKUR89suhdFGx'}

export VOLUME_LARAVEL_API=${VOLUME_LARAVEL_API:-$(realpath "${RUN_DIR}/../../haakco-api")}
export VOLUME_DOCKER_DATA=${VOLUME_DOCKER_DATA:-$(realpath "${RUN_DIR}/../../docker-data")}
export VOLUME_LARAVEL_API_ZSH_HISTORY_WEB=${VOLUME_LARAVEL_API_ZSH_HISTORY_WEB:-"${VOLUME_DOCKER_DATA}/haakco-api/zsh_history_web"}
export VOLUME_LARAVEL_API_ZSH_HISTORY_ROOT=${VOLUME_LARAVEL_API_ZSH_HISTORY_ROOT:-"${VOLUME_DOCKER_DATA}/haakco-api/zsh_history_root"}
export VOLUME_LARAVEL_API_BASH_HISTORY_WEB=${VOLUME_LARAVEL_API_BASH_HISTORY_WEB:-"${VOLUME_DOCKER_DATA}/haakco-api/bash_history_web"}
export VOLUME_LARAVEL_API_BASH_HISTORY_ROOT=${VOLUME_LARAVEL_API_BASH_HISTORY_ROOT:-"${VOLUME_DOCKER_DATA}/haakco-api/bash_history_root"}

## REDIS
export VOLUME_REDIS_DB=${VOLUME_REDIS_DB:-"db_haak_redis"}

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

## Fix for strange docker for mac bug :(
docker network prune -f

sleep 5

docker network create -d overlay --subnet=10.44.100.0/24 --attachable "${APP_NETWORK}" &
docker network create -d overlay --subnet=10.44.2.0/24 --attachable "${TRAEFIK_NETWORK}" &

if [[ -z "${DOCKER_MACHINE_API_REMOTE_NAME}" ]]; then
  eval "$(${DM} env -u)"
else
  eval "$(${DM} env ${DOCKER_MACHINE_API_REMOTE_NAME})"
fi

## Fix for strange docker for mac bug :(
docker network prune -f

sleep 5

docker network create -d overlay --subnet=10.44.100.0/24 --attachable "${APP_NETWORK}" &
docker network create -d overlay --subnet=10.44.2.0/24 --attachable "${TRAEFIK_NETWORK}" &

sleep 5

#docker plugin install rexray/s3fs \
#  S3FS_OPTIONS="allow_other,use_path_request_style,nonempty,url=http://<minio_endpoint_url>" \
#  S3FS_ENDPOINT="http://<minio_endpoint_url>" \
#  S3FS_ACCESSKEY="<minio_accesskey>" \
#  S3FS_SECRETKEY="<minio_secretkey>"



echo "Start Logging First"
docker stack deploy --compose-file ./stack-files/stack-elk.yml --prune --with-registry-auth "${APP_NAME}-elk" &

echo "Waiting for logging before starting"
sleep 1

docker stack deploy --compose-file ./stack-files/stack-traefik.yml --prune --with-registry-auth "${APP_NAME}-traefik" &
docker stack deploy --compose-file ./stack-files/stack-postgresql.yml --prune --with-registry-auth "${APP_NAME}-postgres" &
docker stack deploy --compose-file ./stack-files/stack-redis.yml --prune --with-registry-auth "${APP_NAME}-redis" &
docker stack deploy --compose-file ./stack-files/stack-minio.yml --prune --with-registry-auth "${APP_NAME}-minio" &

docker stack deploy --compose-file ./stack-files/stack-mail-relay.yml --prune --with-registry-auth "${APP_NAME}-mail-relay" &
docker stack deploy --compose-file ./stack-files/stack-portainer.yml --prune --with-registry-auth "${APP_NAME}-portainer" &

docker stack deploy --compose-file ./stack-files/stack-ouroboros.yml --prune --with-registry-auth "${APP_NAME}-ouroboros" &

echo "Starting servers in 2 seconds last to give everything else a bit of time to start"
sleep 2

if [[ "${ENABLE_LARAVEL_ECHO_SERVER}" = "TRUE" ]]; then
  docker stack deploy --compose-file ./stack-files/stack-laravel-echo.yml --prune --with-registry-auth "${APP_NAME}-laravel-echo" &
fi

## Clean up link to nfs volume other wise if location is changed it doesn't update
docker volume rm haakco-laravel-nfs_api_nfs
sleep 1
docker stack deploy --compose-file ./stack-files/stack-laravel-api-nfs.yml --prune --with-registry-auth "${APP_NAME}-laravel-api-nfs" &
