FROM ubuntu:22.04

LABEL maintainer="Rafael Sene rafael@riscv.org"

WORKDIR /build

RUN export DEBIAN_FRONTEND=noninteractive; apt-get update; apt-get install -y \
bison \
build-essential \
cmake \
curl \
flex \
fonts-lyx \
git \
graphviz \
default-jre \
libcairo2-dev \
libffi-dev \
libgdk-pixbuf2.0-dev \
libpango1.0-dev \
libxml2-dev \
make \
pkg-config \
ruby \
ruby-dev \
libgif-dev \
libwebp-dev \
libzstd-dev \
ruby-full \
gem \
npm

RUN gem install \
asciidoctor \
asciidoctor-bibtex \
asciidoctor-diagram \
asciidoctor-mathematical \
asciidoctor-pdf \
citeproc-ruby \
coderay \
csl-styles \
json \
pygments.rb \
rghost \
rouge \
ruby_dev

RUN npm install -g wavedrom-cli