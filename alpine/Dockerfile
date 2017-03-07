FROM alpine:3.5

MAINTAINER Koichi Ashizaki

RUN apk --update --no-cache add \
    python \
    py-pip \
    g++ \
 && apk --update add --virtual \
    build-dependencies \
    build-base \
    python-dev \
    curl \
    autoconf \
    automake \
    make \
 && pip install --upgrade pip \
 && pip install biopython

ENV VSEARCH_VER 2.4.0

WORKDIR /tmp

RUN curl -SLO https://github.com/torognes/vsearch/archive/v$VSEARCH_VER.tar.gz \
 && mkdir -p /usr/src \
 && tar -xzvf v$VSEARCH_VER.tar.gz -C /usr/src \
 && cd /usr/src/vsearch-$VSEARCH_VER \
 && ./autogen.sh \
 && ./configure \
 && make \
 && make install \
 && ln -s /usr/src/v$VSEARCH_VER/vsearch /usr/bin/vsearch \
 && apk del build-dependencies \
 && rm -rf /tmp/v$VSEARCH_VER.tar.gz

CMD ["vsearch"]
