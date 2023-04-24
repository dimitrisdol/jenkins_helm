#!/bin/bash

ENV_ID=uat	
VERSION=4.6.0

# Install Nginx-Ingress

helm upgrade --install ingress-nginx --values common_values.yaml --values ${ENV_ID}_values.yaml --atomic -n ingress-nginx --create-namespace --timeout 5m0s ingress-nginx-${VERSION}.tgz --debug


