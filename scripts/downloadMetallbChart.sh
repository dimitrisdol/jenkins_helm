#!/bin/bash

VERSION=0.13.9

# This script is used for the initial download of the helm chart.
# Download the chart after adding the repo.
helm repo add metallb https://metallb.github.io/metallb
helm repo update
helm fetch metallb/metallb --version ${VERSION}
mv metallb-${VERSION}.tgz ../helmCharts/metallb/metallb-${VERSION}.tgz.original
