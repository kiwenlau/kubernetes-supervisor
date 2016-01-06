FROM kiwenlau/kubernetes:1.0.7

MAINTAINER kiwenlau <kiwenlau@gmail.com>

WORKDIR /root

# install supervisor, curl
RUN apt-get update && apt-get install -y supervisor curl

# install docker
RUN curl -fLsS https://get.docker.com/ | sh

# install etcd
RUN wget --no-check-certificate  https://github.com/coreos/etcd/releases/download/v2.2.3/etcd-v2.2.3-linux-amd64.tar.gz && \
    tar xzvf etcd-v2.2.3-linux-amd64.tar.gz && \
    cp etcd-v2.2.3-linux-amd64/etcd* /usr/local/bin && \
    rm -rf etcd-v2.2.3-linux-amd64.tar.gz etcd-v2.2.3-linux-amd64

RUN chmod +x /root/test-kubernetes.sh

ADD kubernetes.conf /etc/supervisor/conf.d/kubernetes.conf

VOLUME /var/lib/docker

CMD ["supervisord", "-c", "/etc/supervisor/conf.d/kubernetes.conf"]

# sudo docker build -t kiwenlau/kubernetes-shell:1.0.7 

