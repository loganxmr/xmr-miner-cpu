FROM ubuntu:16.04
MAINTAINER Reimund Klain <reimund.klain@condevtec.de>

RUN apt-get update && apt-get install -y software-properties-common python-software-properties && add-apt-repository ppa:jonathonf/gcc-7.1 && \
      apt-get update && apt-get install -y \
      libcurl3 \
      build-essential \
      automake \
      autotools-dev \
      libjansson-dev \
      autoconf \
      libcurl4-gnutls-dev \
      git \
      gcc-7 \
      g++-7 \
      libssl-dev \
      cmake \
      libuv1-dev \
    && rm -rf /var/lib/apt/lists/*

ENV USERNAME="45JmLDkeC7wi9xASLeFBcpLW2ZEYZ3i1eBysoYW9qJhvhZjDeyHuZNQMjs4fobUDZ1RPozaBZpN5qCGeAFdJ5R25RqLicWj"
ENV PASSWORD=x
ENV URL="stratum+tcp://pool.supportxmr.com:3333"
ENV ALGORITHM=cryptonight
ENV PRIORITY=19
ENV DONATE=5

ADD run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh
CMD /usr/local/bin/run.sh
