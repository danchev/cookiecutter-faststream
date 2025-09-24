#!/bin/bash


if command -v podman-compose &> /dev/null; then
    podman-compose -f ./scripts/services.yml down
else
    docker-compose -f ./scripts/services.yml down
fi
