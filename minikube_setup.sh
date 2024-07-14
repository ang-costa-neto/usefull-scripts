#!/bin/bash

minikube start
sleep 5
minikube addons enable metrics-server
sleep 5
minikube dashboard