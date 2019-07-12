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
If address in blacklisted it will provide a button, using this button we can whitelist the email address. 

The python code is then containerised with alpine image using Docker, and this image is then pushed to docker public registry, private registry and AWS ECR as well.

The respective image URL's were used to make deployments in Kubernetes.

## AWS - EKS + ECR

Created EKS cluster 
```
eksctl create cluster --name=thirdekscluster --ssh-access=true --ssh-public-key=sreeeks --nodegroup-name=standard-workers --node-type=t3.medium --nodes=3 --nodes-min=1 --nodes-max=4 --node-ami=auto
```

Deployed Kubernetes Dashboard

![EKS NODES](/snapshots/kube-node.png)


Installed **Traefik** (tried with **Helm Chart** and Kubernetes object - traefik-ds.yaml)

Exposed Traefik UI with type: LoadBalancer

![Traefik UI Providers](/snapshots/traefik-ui.png)

![Traefik UI Health](/snapshots/traefik-ui2.png)


Used **ECR** to save the docker image required for deployment. 

![AWS ECR](/snapshots/aws-ecr.png)


Deployed web-application:

* email-app-deployment.yaml

![Kubernetes Deployment](/snapshots/kube-deploy.png)

* email-app-service.yaml

![Kubernetes Service](/snapshots/kube-svc.png)


Purchased domain name **emailwhitelister.ml** 

In **Route53** i have hosted this same domain in DNS management

Updated DNS registrar to use AWS nameservers.

Set alias to loadbalancer and added www.emailwhitelister.ml CNAME as well.

![Route53 adding domain](/snapshots/route53.png)


Created ingress for domain names emailwhitelister.ml and www.emailwhitelister.ml

* web-domain-ingress.yaml

![Kubernetes Ingress](/snapshots/kube-ing.png)

Both emailwhitelister.ml and www.emailwhitelister.ml was loading fine.

![Web App](/snapshots/final.gif)



## GCP + Google Registry

In GCP, i have used google registry to save the image. I have created, exposed and sscaled the cluster.

## AWS - EKS + Docker Registry

In EKS, I have used docker registry to save the image and used secret to pull the image while deployment


## Docker Containers

I have also created the same as docker container and linked with nginx in reverse proxy.
