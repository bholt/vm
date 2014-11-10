#######################################################
# Base image with my common software and configuration
#######################################################
FROM bholt/base
MAINTAINER Brandon Holt <holt.bg@gmail.com>

RUN apt-get install -y \
  libevent-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libssl-dev

ENTRYPOINT ["/bin/bash"]
CMD ["--login"]
