FROM alpine
MAINTAINER Sreejith VU (sreejithvu@outlook.com)
RUN apk add --update python py-pip
RUN pip install flask
RUN pip install requests
COPY LS_EMAIL_BL_MANAGE/ /home/deployment/
WORKDIR /home/deployment
EXPOSE 5000
CMD python ./ls_email_bl_manage.py
