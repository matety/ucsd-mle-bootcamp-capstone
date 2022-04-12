#!/bin/sh
PROB=$(curl -s \
  -u token:$DATABRICKS_TOKEN \
  -X POST \
  -H "Content-Type: application/json" \
  -d@data.json \
  https://vertexinc-cse-dev-ws1.cloud.databricks.com/model/transaction_classification/10/invocations)

echo 'Probability of click:'$PROB
