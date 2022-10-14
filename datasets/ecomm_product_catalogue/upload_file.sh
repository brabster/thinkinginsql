#!/bin/bash

set -euo pipefail

HERE=$(dirname "$0")
FILEPATH_TO_LOAD=$1
TARGET_TABLE=ecomm_product_catalogue.products

bq \
    --project_id=thinkinginsql-datasets \
    --location=EU \
    load \
    --skip_leading_rows=1 \
    ${TARGET_TABLE} \
    ${FILEPATH_TO_LOAD} \
    ${HERE}/schema.json
