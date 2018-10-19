FROM alpine
MAINTAINER Sreejith VU (sreejithvu@outlook.com)
RUN apk add --update python py-pip
RUN pip install flask
RUN pip install requests
COPY MANAGE_EMAIL_BLACKLISTS/ /home/deployment/
WORKDIR /home/deployment
EXPOSE 8080
CMD python ./manage_email_blacklists.py
