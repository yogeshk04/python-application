# python-application
Python DevOps project

## Step-by-step details:

Prerequisites:

   -  Python3 installation
   -  Docker
   -  EKS cluster, minikube

Steps:

    ```
    docker build -t monitoring .
    docker tag  monitoring:latest yogeshk04/monitoring:latest    
    docker push yogeshk04/monitoring:latest
    minikube start --memory=4096 --driver=docker
    python3 k8s-deployment.py
    kubectl port-forward svc/monitoring-service 5005:5000
    ```
Access the application http://localhost:5005/


### Exposing service port on local machine

> kubectl port-forward svc/my-service 5005:5000
