#!/usr/bin/env bash
docker build -t site:base -f Dockerfile.base .
docker build -t site:serve -f Dockerfile.serve .
