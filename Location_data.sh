#!/bin/bash
echo "
bq mk \
--table \
--expiration 36000 \
--description "This is my table" \
--label organization:development \
levi_dataset.Location_data \

bq load \
--source_format=PARQUET \
levi_dataset.Location_data \
"gs://omd-emea-engineer-assessment-location/2019/04/01/*.parquet","gs://omd-emea-engineer-assessment-location/2019/05/01/*.parquet","gs://omd-emea-engineer-assessment-location/2019/month=06/day=01/*.parquet"
"