#!/bin/bash

ENV_ID=uat	
VERSION=4.3.22

# Install Jenkins

helm upgrade --install jenkins --values common_values.yaml --values ${ENV_ID}_values.yaml --atomic -n jenkins --create-namespace --timeout 5m0s jenkins-${VERSION}.tgz  --debug


