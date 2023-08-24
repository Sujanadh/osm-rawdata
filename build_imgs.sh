#!/bin/bash

set -eo pipefail

PKG_VERSION=0.1.0

docker build . --push \
    -t "ghcr.io/hotosm/osm-rawdata:${PKG_VERSION}" \
    --target prod \
    --build-arg PKG_VERSION="${PKG_VERSION}"

docker build . --push \
    -t ghcr.io/hotosm/osm-rawdata:ci \
    --target ci \
    --build-arg PKG_VERSION="${PKG_VERSION}"
