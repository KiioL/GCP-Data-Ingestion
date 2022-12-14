#!/bin/bash
echo "
bq mk \
--table \
--expiration 36000 \
--description "This is my table" \
--label organization:development \
levi_dataset.dmp_data_20190701 \

bq load \
--source_format=NEWLINE_DELIMITED_JSON \
levi_dataset.dmp_data_20190701 \
"gs://omd-emea-engineer-assessment-dmp/interactions20190701.json" \
siteNumber:INTEGER,trackId:STRING,timestamp:INTEGER,type:STRING,content:INTEGER,eventId:STRING,variables:JSON,partnerNumber:STRING,partnerCookie:STRING,mergeType:STRING,interactionType:STRING,url:STRING,source:STRING,userAgent:STRING "

