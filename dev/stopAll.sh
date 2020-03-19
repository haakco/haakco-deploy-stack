#!/usr/bin/env bash
export APP_NAME="haakco"

export DM="docker-machine"

DOCKER_MACHINE_API_REMOTE_NAME=''
#DOCKER_MACHINE_API_REMOTE_NAME='blue'
DOCKER_MACHINE_SERVER_REMOTE_NAME=
#DOCKER_MACHINE_SERVER_REMOTE_NAME=blue

if [[ -z "${DOCKER_MACHINE_API_REMOTE_NAME}" ]]
then
 eval $(${DM} env -u)
else
 eval $(${DM} env ${DOCKER_MACHINE_API_REMOTE_NAME})
fi

DOCKER_STACK_LIST=$(docker stack ls | awk '{print $1}' | grep "^${APP_NAME}" | grep -v 'NAME')
if [[ ! -z "${DOCKER_STACK_LIST}" ]]
then
  docker stack rm $(echo "${DOCKER_STACK_LIST}")
fi

if [[ -z "${DOCKER_MACHINE_SERVER_REMOTE_NAME}" ]]
then
 eval $(${DM} env -u)
else
 eval $(${DM} env ${DOCKER_MACHINE_SERVER_REMOTE_NAME})
fi

DOCKER_STACK_LIST=$(docker stack ls | awk '{print $1}' | grep "^${APP_NAME}" | grep -v 'NAME')
if [[ ! -z "${DOCKER_STACK_LIST}" ]]
then
  docker stack rm $(echo "${DOCKER_STACK_LIST}")
fi
