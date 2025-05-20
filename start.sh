#!/bin/bash

echo "Activating environment..."

export TZ=UTC

. /opt/conda/etc/profile.d/conda.sh && conda activate cnv_facets

exec "$@"
