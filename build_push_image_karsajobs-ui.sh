#!/bin/bash

# Build Docker image
docker build -t aryahafidz/karsajobs-ui:latest .

# Login ke Docker Hub
docker login --username aryahafidz --password dckr_pat_Dc3PAGNIaa1PujyU-OmVDLrqga8

# Push image ke Docker Hub
docker push aryahafidz/karsajobs-ui:latest
