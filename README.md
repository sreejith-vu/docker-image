# Kubernetes Web Application

### Technologies used:

```
GCP
EKS
ECR
HELM
DOCKER
TRAEFIK
KUBERNETES
```


I have done this project only due to my keen intrest in learing kubernetes.


### What I have done?

Developed a application in python using the flask module which will check if the email address is blacklisted or not in the database.
If address in blacklisted it will provide a button, using this button we can whitelist the email address. (This was developed for my previous company)

The python code is then containerised with alpine image using Docker, and this image is then pushed to docker public registry, private registry and AWS ECR as well.

The respective image URL's were used to make deployments in Kubernetes.


## GCP + Google Registry

In GCP, i have used google registry to save the image. I have created, exposed and sscaled the cluster.

## AWS - EKS + Docker Registry

In EKS, I have used docker registry to save the image and used secret to pull the image while deployment

## AWS - EKS + ECR

Here i have user ECR to save the image and for deployment. I have also tried traefik with this setup.
**HELM** was used to install traefik.

## Docker Containers

I have also created the same as docker container and linked with nginx in reverse proxy.
