#!/bin/sh
kind delete cluster && kind create cluster

kubectl cluster-info
kubectl wait --for=condition=Ready nodes --all --timeout=300s

kubectl create namespace rbac-test
kubectl create -f multiimage-pod.yaml

kubectl create serviceaccount limiteduser -n rbac-test

kubectl create -f limited-role.yaml
kubectl create -f limited-binding.yaml

CA=$(grep 'certificate-authority-data' ~/.kube/config | awk '{print $2}')
URL=$(grep 'server:' ~/.kube/config | awk '{print $2}')
TOKEN=$(kubectl create token limiteduser --duration=8760h -n rbac-test)

cp limited-config-template myconfig
sed -i '' "s|{{CA}}|$CA|g" myconfig
sed -i '' "s|{{URL}}|$URL|g" myconfig
sed -i '' "s|{{TOKEN}}|$TOKEN|g" myconfig

trivy k8s -d --report summary --kubeconfig myconfig
