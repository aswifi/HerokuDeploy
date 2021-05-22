FROM golang:1.16.4-alpine
MAINTAINER 

ENV 

WORKDIR /app

RUN git clone https://github.com/aswifi/Temp.git \
    && chmod +x alist

EXPOSE 80

CMD nohup ./alist > log.log 2>&1 &
