# Kubernetes Web Application

## Technologies used:

```
GCP, EKS, ECR, DOCKER, HELM, TRAEFIK
```


I have done this project is only due to my intrest in learing more about kubernetes.


### What I have done?

Developed a application in python using the flask module which will check if the email address is blacklisted or not in the database.
If address in blacklisted it will provide a button, using this button we can whitelist the email address. (This was developed for my previous company)

The python code is then containerised with alpine image using Docker. And pushed this image is pushed to docker public registry, private registry and AWS ECR as well.

The respective image URL's were used to make deployments in Kubernetes.

