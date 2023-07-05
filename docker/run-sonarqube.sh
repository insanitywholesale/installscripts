#!/bin/sh

docker volume create --name sonarqube_data
docker volume create --name sonarqube_logs
docker volume create --name sonarqube_extensions

docker run -d --name sonarqube \
	-p 9000:9000 \
	-v sonarqube_data:/opt/sonarqube/data \
	-v sonarqube_extensions:/opt/sonarqube/extensions \
	-v sonarqube_logs:/opt/sonarqube/logs \
	sonarqube:community
