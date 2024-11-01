#!/bin/sh

kubectl apply -f rbac-namespace.yaml

kubectl apply -f roles/ns-reader.yaml

kubectl create serviceaccount user1
kubectl create serviceaccount user2
kubectl create serviceaccount user3
kubectl create serviceaccount user4