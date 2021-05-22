FROM zhaojun1998/alpine-java
MAINTAINER Stille <stille@ioiox.com>

ENV VERSION=3.0

#WORKDIR /root

RUN wget https://github.com/zhaojun1998/zfile/releases/download/${VERSION}/zfile-${VERSION}.war \
    && mkdir zfile && unzip zfile-${VERSION}.war -d zfile && rm -rf zfile-${VERSION}.war \
    && chmod +x ~/zfile/bin/*.sh

EXPOSE 80

CMD sh ./zfile/bin/start.sh && tail -f /dev/null
