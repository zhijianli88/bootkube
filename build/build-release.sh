#!/usr/bin/env bash
set -euo pipefail

BOOTKUBE_ROOT=$(git rev-parse --show-toplevel)

docker run -v ${BOOTKUBE_ROOT}:/go/src/github.com/kubernetes-sigs/bootkube golang:1.11.1 /bin/bash -c "cd /go/src/github.com/kubernetes-sigs/bootkube && make release"
