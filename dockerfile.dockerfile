FROM ubuntu:20.04
LABEL maintainer=Swadeep <pswadeeps@gmail.com>
RUN export DEBAIN_FRONTEND=NONINTERACTIVE && \
    apt-get update && \
    apt-get install apache2 -y
EXPOSE 80 
CMD [ "apachectl","-D","FOREGROUND" ]
CMD ["echo","hello this my docker through dockerfile"]
