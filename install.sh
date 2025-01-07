#!/usr/bin/env bash

set -x

podman-compose down
podman-compose pull
podman-compose up -d
