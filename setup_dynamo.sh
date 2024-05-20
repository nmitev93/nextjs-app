#!/bin/bash

ENDPOINT="http://localhost:8000"
TABLE_NAME="nextjs-app"

echo "Make sure Docker container is running ..."
docker-compose up -d

echo "List of current tables in DynamoDB ..."
aws dynamodb list-tables \
  --endpoint-url ${ENDPOINT}

echo "Deleting ${TABLE_NAME} if exists ..."
aws dynamodb delete-table \
  --endpoint-url ${ENDPOINT} \
  --table-name ${TABLE_NAME} \
  --no-cli-pager

echo "Creating DynamoDB table for the app ..."
aws dynamodb create-table \
  --endpoint-url ${ENDPOINT} \
  --table-name ${TABLE_NAME} \
  --attribute-definitions '[{"AttributeName": "primary_key","AttributeType": "S"}, {"AttributeName": "secondary_key","AttributeType": "S"}]' \
  --key-schema '[{"AttributeName": "primary_key","KeyType": "HASH"}, {"AttributeName": "secondary_key","KeyType":"RANGE"}]' \
  --billing-mode PAY_PER_REQUEST \
  --no-cli-pager
