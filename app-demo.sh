#!/bin/bash
kubectl apply -f psp.yaml 
kubectl create ns sock-shop
kubectl create secret docker-registry docker-hub --docker-username=powellcrack --docker-password='Qh#!3#ocuYDlq0th' --docker-email="steven.liang@icloud.com" -n sock-shop
kubectl patch serviceaccount default -p "{\"imagePullSecrets\": [{\"name\": \"docker-hub\"}]}" -n sock-shop
kubectl create secret docker-registry docker-hub --docker-username=powellcrack --docker-password='' --docker-email="steven.liang@icloud.com"
kubectl patch serviceaccount default -p "{\"imagePullSecrets\": [{\"name\": \"docker-hub\"}]}"

