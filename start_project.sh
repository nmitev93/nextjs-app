#!/bin/bash
echo "Starting Docker containers ..."
docker-compose up -d

echo "Starting Next.js app ..."
cd nextjs
yarn dev
