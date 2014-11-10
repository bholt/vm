#######################################################
# Base image with my common software and configuration
#######################################################
FROM ubuntu:14.10
MAINTAINER Brandon Holt <holt.bg@gmail.com>

RUN apt-get update && apt-get install -y \
  build-essential \
  libboost1.55-all-dev \
  wget \
  make \
  cmake \
  ninja-build \
  git \
  bash-completion \
  man \
  openssl

RUN mkdir /setup
ADD . /setup
RUN cat /setup/profile.bash >> /etc/profile

ENV LD_LIBRARY_PATH  $LD_LIBRARY_PATH:/usr/local/lib
ENV CC               /usr/bin/gcc
ENV CXX              /usr/bin/g++

ENTRYPOINT ["/bin/bash"]
CMD ["--login"]
