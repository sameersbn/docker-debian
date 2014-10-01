FROM debian:jessie
MAINTAINER sameer@damagehead.com

ENV DEBIAN_FRONTEND noninteractive

RUN echo "APT::Install-Recommends 0;" >> /etc/apt/apt.conf.d/01norecommends \
 && echo "APT::Install-Suggests 0;" >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && apt-get install -y vim.tiny wget sudo net-tools ca-certificates \
 && rm -rf /var/lib/apt/lists/* # 20141001
