FROM alpine:3.5

MAINTAINER Koichi Ashizaki

RUN apk --no-cache add \
        python \
        py-pip \
        g++  \
    && apk --no-cache add --virtual \
        build-dependencies \
        build-base \
        python-dev \
        git \
        autoconf \
        automake \
        make \
    && pip install --upgrade pip \
    && pip install biopython

WORKDIR /tmp

RUN git clone https://github.com/torognes/vsearch.git \
    && cd vsearch \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install \
    && ln -s /usr/src/vsearch /usr/bin/vsearch \
    && apk del build-dependencies \
    && rm -rf vsearch

CMD ["vsearch"]