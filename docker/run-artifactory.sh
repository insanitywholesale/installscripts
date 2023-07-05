#!/bin/sh

docker run -d --name artifactory \
	-v /opt/artifactory-data/var:/var/opt/jfrog/artifactory \
	-p 8081:8081 \
	-p 8082:8082 \
	releases-docker.jfrog.io/jfrog/artifactory-oss
