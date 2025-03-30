#!/bin/bash

docker build -t aodihis/karsajobs:latest .
docker tag aodihis/karsajobs:latest ghcr.io/aodihis/karsajobs:latest
echo "$CR_PAT" | docker login ghcr.io -u "aodihis" --password-stdin
docker push ghcr.io/aodihis/karsajobs:latest