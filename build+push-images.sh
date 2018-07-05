#!/bin/bash
docker build -t gcr.io/jumia-app-sample/api:latest api/.
docker build -t gcr.io/jumia-app-sample/fo:latest fo/.

gcloud docker -- push gcr.io/jumia-app-sample/api:latest
gcloud docker -- push gcr.io/jumia-app-sample/fo:latest

docker images

