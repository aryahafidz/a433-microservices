#!/bin/bash

# Untuk melakukan build dari Dockerfile
docker build -t item-app:v1 .

# Untuk mengecek list docker images yang sudah ada
docker images 

# Untuk ngepush docker images ke docker hub
cat ../dockerpass.txt | docker login --username aryahafidz --password-dckr_pat_Dc3PAGNIaa1PujyU-OmVDLrqga8
docker tag item-app:v1 aryahafidz/item-app:v1
docker push aryahafidz/item-app:v1