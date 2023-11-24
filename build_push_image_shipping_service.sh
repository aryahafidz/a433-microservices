#!/bin/bash

# Build Docker image
docker build -t ghcr.io/aryahafidz/shipping-service:latest .

# Login ke Docker Hub
echo "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" | docker login ghcr.io -u aryahafidz --password-stdin

# Push image ke Docker Hub
docker push ghcr.io/aryahafidz/shipping-service:latest