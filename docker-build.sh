#!/bin/bash

set -eu

IMAGE=build-xremap
docker build . -t $IMAGE --build-arg uid=$UID
