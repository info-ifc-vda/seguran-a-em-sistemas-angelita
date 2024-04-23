#!/bin/bash

docker network create sonarqube-network
docker volume create --name postgresql_data && \
docker run -d --name postgresql \
  --env ALLOW_EMPTY_PASSWORD=yes \
  --env POSTGRESQL_USERNAME=bn_sonarqube \
  --env POSTGRESQL_PASSWORD=bitnami \
  --env POSTGRESQL_DATABASE=bitnami_sonarqube \
  --network sonarqube-network \
  --volume postgresql_data:/bitnami/postgresql \
  bitnami/postgresql:latest