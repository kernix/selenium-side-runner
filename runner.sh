#!/bin/sh

DOCKER_COMPOSE=../docker-compose.yml

cd $1

cp $DOCKER_COMPOSE .

docker-compose run selenium-side-runner

docker-compose down

rm docker-compose.yml