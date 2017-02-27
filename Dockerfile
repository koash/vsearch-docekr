FROM centos:7.3.1611

RUN \
  set -x \
  yum update -y && \
  yum install -y \
  wget \
  automake \
  gcc-c++ \
  make && \
  yum clean all

ENV VSEARCH_VER 2.4.0

RUN \
  cd /opt && \
  wget https://github.com/torognes/vsearch/archive/v$VSEARCH_VER.tar.gz && \
  tar -xzvf v$VSEARCH_VER.tar.gz && \
  cd /opt/vsearch-$VSEARCH_VER && \
  ./autogen.sh && \
  ./configure && \
  make && \
  make install && \
  ln -s /opt/v$VSEARCH_VER/vsearch /usr/bin/vsearch && \
  rm -rf /opt/v$VSEARCH_VER.tar.gz
 
CMD ["vsearch"] 
 
