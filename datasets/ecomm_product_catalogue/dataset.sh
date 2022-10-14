#!/bin/bash

bq mk \
    --project_id thinkinginsql-datasets \
    --location EU \
    --dataset \
    --description "E-Commerce product catalogue from data.world: https://data.world/jfreex/products-catalog-from-newchiccom" \
    ecomm_product_catalogue
