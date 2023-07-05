#!/bin/sh

docker run -d --name nexus \
	-p 8081:8081 \
	-p 8082:8082 \
	-v /opt/nexus-data:/nexus-data \
	sonatype/nexus3
