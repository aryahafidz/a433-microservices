#!/bin/bash

# Build Docker image
docker build -t ghcr.io/aryahafidz/order-service:latest .

# Login ke Docker Hub
echo "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" | docker login ghcr.io -u aryahafidz --password-stdin

# Push image ke Docker Hub
docker push ghcr.io/aryahafidz/order-service:latest