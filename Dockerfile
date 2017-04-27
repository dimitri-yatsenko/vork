FROM ninai/pipeline:jupyter

MAINTAINER Dimitri Yatsenko <dvyatsen@bcm.edu>

EXPOSE 8888 6006

WORKDIR /work

RUN pip3 uninstall -y commons && \
    git clone https://github.com/atlab/commons && \
    pip3 uninstall -y pipeline && \
    git clone https://github.com/cajal/pipeline && \
    pip3 uninstall -y datajoint && \
    git clone https://github.com/datajoint/datajoint-python && \
    pip3 install -e datajoint-python

ENTRYPOINT /bin/bash
