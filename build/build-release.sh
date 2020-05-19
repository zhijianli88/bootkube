#!/usr/bin/env bash
set -euo pipefail

BOOTKUBE_ROOT=$(git rev-parse --show-toplevel)
GOLANG_IMAGE=${GOLANG_IMAGE:-golang:1.13.11}

docker run -v ${BOOTKUBE_ROOT}:/go/src/github.com/kubernetes-sigs/bootkube ${GOLANG_IMAGE} /bin/bash -c "cd /go/src/github.com/kubernetes-sigs/bootkube && make release"
