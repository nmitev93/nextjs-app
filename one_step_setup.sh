#!/bin/bash

echo "Setting up DynamoDB container ..."
docker-compose up --build -d

echo "Configuring DynamoDB table ..."
sh ./setup_dynamo.sh

echo "Setting up react app ..."
cd nextjs
yarn install
