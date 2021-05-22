FROM alpine-golang
MAINTAINER 

ENV 

WORKDIR /app

RUN git clone https://github.com/aswifi/Temp.git \
    && chmod +x alist

EXPOSE 80

CMD nohup ./alist > log.log 2>&1 &
