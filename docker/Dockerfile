FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="KrakenChain Developers <dev@krakenchain.org>"
LABEL description="Dockerised KrakenChain, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /krakenchain

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} krakenchain
RUN useradd -u ${USER_ID} -g krakenchain -s /bin/bash -m -d /krakenchain krakenchain
RUN mkdir /krakenchain/.krakenchain
RUN chown krakenchain:krakenchain -R /krakenchain

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER krakenchain

VOLUME ["/krakenchain"]

EXPOSE 52885 9999 62885 62886

WORKDIR /krakenchain
