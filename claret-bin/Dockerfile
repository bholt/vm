#######################################################
# Base image with my common software and configuration
#######################################################
FROM bholt/claret
MAINTAINER Brandon Holt <holt.bg@gmail.com>

RUN apt-get install -y \
  libevent-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libssl-dev \
  tcl

ADD tapir /tapir
RUN cd /tapir/src && make clean && make

ENTRYPOINT ["/bin/bash"]
CMD ["--login"]
