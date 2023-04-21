#!/bin/bash

VERSION=4.3.22

helm upgrade --install kafka --values values.yaml --atomic -n kafka --timeout 5m0s kafka-${VERSION}.tgz

