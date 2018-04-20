FROM alpine:latest

RUN apk add --no-cache \
        git \
        perl-image-exiftool \
        exiftool \
        python \
        py-pip

RUN mkdir /opt && \
    git clone https://github.com/jmathai/elodie.git /opt/elodie && \
    pip install -r /opt/elodie/requirements.txt && \
    ln -s /opt/elodie/elodie.py /usr/bin/elodie

# Add elodie user
RUN adduser -D -g "Elodie" elodie && \
    mkdir -p /home/elodie && \
    chown -R elodie:elodie /home/elodie/

WORKDIR /home/elodie
USER elodie

ENTRYPOINT ["elodie"]
