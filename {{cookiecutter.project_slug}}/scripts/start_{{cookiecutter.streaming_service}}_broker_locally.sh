#!/bin/bash

if command -v podman-compose &> /dev/null; then
    podman-compose -f ./scripts/services.yml up -d --no-recreate
else
    docker-compose -f ./scripts/services.yml up -d --no-recreate
fi
