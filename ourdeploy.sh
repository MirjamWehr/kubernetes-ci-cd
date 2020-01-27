#! /bin/sh

tag=$1

sed "s/latest/$tag/" applications/hello-kenzan/k8s/deployment.yaml > applications/hello-kenzan/k8s/tmp.yaml
kubectl apply -f applications/hello-kenzan/k8s/tmp.yaml
rm applications/hello-kenzan/k8s/tmp.yaml
