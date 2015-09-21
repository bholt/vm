#######################################################
# Base image with my common software and configuration
#######################################################
FROM bholt/base
MAINTAINER Brandon Holt <holt.bg@gmail.com>

RUN apt-get update && \
    apt-get install -y wget && \
    wget -O - http://ubuntu.hyperdex.org/hyperdex.gpg.key | apt-key add - && \
    echo 'deb [arch=amd64] http://ubuntu.hyperdex.org trusty main' >> /etc/apt/sources.list.d/hyperdex.list
RUN apt-get update && apt-get install -y hyperdex

RUN curl -sSf https://static.rust-lang.org/rustup.sh > /rustup.sh && \
    sh /rustup.sh --yes --channel=nightly && \
    rm /rustup.sh

ENV USER root

ENTRYPOINT ["/usr/bin/zsh"]
