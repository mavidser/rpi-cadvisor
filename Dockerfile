FROM resin/rpi-raspbian:stretch-20180411
LABEL maintainer="Sid Verma <me@sidverma.io>"

RUN apt-get update \
  && apt-get upgrade

ADD https://github.com/mavidser/cadvisor/releases/download/v0.33.1-master-arm/cadvisor /cadvisor

RUN chmod +x /cadvisor

EXPOSE 8080

ENTRYPOINT ["/cadvisor"]
