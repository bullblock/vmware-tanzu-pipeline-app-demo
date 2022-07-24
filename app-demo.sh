#!/bin/bash
kubectl apply -f psp.yaml 
kubectl create ns sock-shop
kubectl create secret docker-registry docker-hub --docker-username= --docker-password='' --docker-email="" -n sock-shop
kubectl patch serviceaccount default -p "{\"imagePullSecrets\": [{\"name\": \"docker-hub\"}]}" -n sock-shop
kubectl create secret docker-registry docker-hub --docker-username= --docker-password='' --docker-email=""
kubectl patch serviceaccount default -p "{\"imagePullSecrets\": [{\"name\": \"docker-hub\"}]}"

