#!/bin/sh

docker run -d --name keycloak \
	-p 8080:8080 \
	-e KEYCLOAK_ADMIN=admin \
	-e KEYCLOAK_ADMIN_PASSWORD=admin \
	quay.io/keycloak/keycloak:19.0.3 start-dev
