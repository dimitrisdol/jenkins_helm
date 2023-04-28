#!/bin/bash

ENV_ID=uat	
VERSION=52.0.0

# Install Jenkins

helm upgrade --install nexus --values common_values.yaml --values ${ENV_ID}_values.yaml --atomic -n nexus --create-namespace --timeout 5m0s nexus-repository-manager-${VERSION}.tgz  --debug
