#!/bin/bash

ebinivictor@gmail.com

gcloud auth list

gcloud config set project PROJECT_ID

student_00_f18bc19b04a8@cloudshell:~ (qwiklabs-gcp-04-13e9e1a44250)$

gcloud services enable containerregistry.googleapis.com

gcloud services enable kurbernetesengine.googleapis.com

gcloud config set compute/region assigned_at_lab_start

gcloud config set compute/zone assigned_at_lab_start

export MY_ZONE=

export MY_ZONE=us-central1-a

gcloud container clusters create-auto webfrontend\
    --region=COMPUTE_REGION

gcloud container clusters create webfrontend --zone $MY_ZONE --num-nodes 2

kubectl version

get compute.instances.get

gcloud compute instances list

kubectl create deploy nginx --image=nginx:1.17.10

kubectl get pods

kubectl list pods

kubectl expose deployment nginx --port 80 --type LoadBalancer

kubectl list services

http://34.135.90.76:8080

kubectl scale deployment nginx --replicas 3

kubectl get pods

kubectl get services

http://34.135.90.76:8080

end