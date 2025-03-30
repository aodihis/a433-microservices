#!/bin/bash

docker build -t aodihis/karsajobs-ui:latest .
docker tag aodihis/karsajobs-ui:latest ghcr.io/aodihis/karsajobs-ui:latest
echo "$CR_PAT" | docker login ghcr.io -u "aodihis" --password-stdin
docker push ghcr.io/aodihis/karsajobs-ui:latest