#!/bin/bash 
NAMESPACE="log"
kubectl create -n $NAMESPACE -f es-discovery-svc.yaml
kubectl create -n $NAMESPACE -f es-svc.yaml
kubectl create -n $NAMESPACE -f es-master.yaml
kubectl rollout status -n $NAMESPACE -f es-master.yaml
kubectl create -n $NAMESPACE -f es-client.yaml
kubectl rollout status -n $NAMESPACE -f es-client.yaml
kubectl create -n $NAMESPACE -f stateful/es-data-svc.yaml
kubectl create -n $NAMESPACE -f stateful/es-data-stateful.yaml
kubectl rollout status -n $NAMESPACE -f stateful/es-data-stateful.yaml
