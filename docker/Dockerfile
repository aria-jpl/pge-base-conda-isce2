FROM hysds/pge-base:latest

LABEL maintainer="hysds"

#USER ops
USER root

COPY ./barn/install-isce2.sh /home/ops

#RUN sh -xv ~/install-isce2.sh && \
#    rm ~/install-isce2.sh
RUN sh -xv /home/ops/install-isce2.sh && \
    rm /home/ops/install-isce2.sh

# a leftover from install above owned as root
RUN rm /home/ops/isce.log

USER ops

# Change to work directory
WORKDIR /home/ops

# Run shell
CMD ["/bin/bash", "--login"]
