#!/bin/sh
kind delete cluster && kind create cluster

kubectl cluster-info
kubectl wait --for=condition=Ready nodes --all --timeout=300s

kubectl create namespace rbac-test
kubectl create -f multiimage-pod.yaml

kubectl create namespace work
kubectl create -f single-pod.yaml

kubectl create namespace dev
kubectl create -f single-pod-dev.yaml

kubectl create serviceaccount limiteduser

kubectl create -f limited-role.yaml
kubectl create -f limited-binding.yaml

kubectl create -f limited-role-dev.yaml
kubectl create -f limited-binding-dev.yaml

CA=$(grep 'certificate-authority-data' ~/.kube/config | awk '{print $2}')
URL=$(grep 'server:' ~/.kube/config | awk '{print $2}')
TOKEN=$(kubectl create token limiteduser --duration=8760h)

echo "CA: $CA"
echo "URL: $URL"
echo "TOKEN: $TOKEN"

cp limited-config-template myconfig
sed -i '' "s|{{CA}}|$CA|g" myconfig
sed -i '' "s|{{URL}}|$URL|g" myconfig
sed -i '' "s|{{TOKEN}}|$TOKEN|g" myconfig

echo "check access to pods"
kubectl get pods -n rbac-test --kubeconfig myconfig

echo "Run Trivy scan"
trivy k8s -d --report summary --kubeconfig myconfig mycontext
