FROM debian:jessie
MAINTAINER sameer@damagehead.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends vim.tiny wget sudo net-tools ca-certificates \
 && rm -rf /var/lib/apt/lists/* # 20140916
