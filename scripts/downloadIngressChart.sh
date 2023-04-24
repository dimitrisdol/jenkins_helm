#!/bin/bash

VERSION=4.6.0

# This script is used for the initial download of the helm chart.
# Download the chart after adding the repo.
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm fetch ingress-nginx/ingress-nginx --version ${VERSION}
mv ingress-nginx-${VERSION}.tgz ../helmCharts/ingress_controller/ingress-nginx-${VERSION}.tgz.original
