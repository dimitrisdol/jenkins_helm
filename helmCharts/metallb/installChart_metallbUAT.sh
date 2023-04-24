#!/bin/bash

ENV_ID=uat	
VERSION=0.13.9

# Install Jenkins

helm upgrade --install metallb --values common_values.yaml --values ${ENV_ID}_values.yaml --atomic -n metallb-system --create-namespace --timeout 5m0s metallb-${VERSION}.tgz

