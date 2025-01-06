#!/usr/bin/env bash

set -x

podman-compose down
podman-compose up -d --pull