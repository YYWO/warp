FROM debian:latest
WORKDIR /app
EXPOSE 30000
RUN apt-get update \
     && apt install wget -y \
     && apt install curl -y \
     && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
     && echo 'Asia/Shanghai' >/etc/timezone 
COPY . /app
RUN chmod 777 /app/*
ENTRYPOINT ["bash", "dockeronewarpmode.sh"]
