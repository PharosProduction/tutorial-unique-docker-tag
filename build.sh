#!/bin/bash
export GIT_SHA=$(git rev-parse HEAD)

docker build -t pharosproduction/tutorial-unique-docker-tag:latest -t pharosproduction/tutorial-unique-docker-tag:$GIT_SHA -f Dockerfile .

docker push pharosproduction/tutorial-unique-docker-tag:latest
docker push pharosproduction/tutorial-unique-docker-tag:$GIT_SHA
