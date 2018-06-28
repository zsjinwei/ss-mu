FROM debian

MAINTAINER zsjinwei

RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/pandoraes/shadowsocksr-manyuser.git && \
    cd shadowsocksr-manyuser && chmod 777 ./shadowsocks_new.sh && \
    echo "1" | ./shadowsocks_new.sh install

CMD service ssr start
