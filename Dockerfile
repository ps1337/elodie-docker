FROM alpine:latest

RUN apk add --no-cache \
        git \
        perl-image-exiftool \
        exiftool \
        python \
        py-pip \
        bash

RUN mkdir /opt && \
    git clone https://github.com/jmathai/elodie.git /opt/elodie && \
    pip install -r /opt/elodie/requirements.txt && \
    ln -s /opt/elodie/elodie.py /usr/bin/elodie

ADD init.sh /init.sh

ENTRYPOINT ["/init.sh"]
