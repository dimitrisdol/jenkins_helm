#!/bin/bash

ENV_ID=uat	
VERSION=4.3.22

# Install Persistent Volume Claim for cluster
kubectl apply -f volume.yaml

# Install Jenkins

helm upgrade --install jenkins --values common_values.yaml --values ${ENV_ID}_values.yaml --atomic -n jenkins --create-namespace --timeout 5m0s jenkins-${VERSION}.tgz --debug

# Get the jenkins password
kubectl exec --namespace jenkins -it svc/jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo

# Expose jenkins locally
echo http://127.0.0.1:8080
kubectl --namespace jenkins port-forward svc/jenkins 8080:8080 &
PID=$!
kill $PID
