#
# Ubuntu image with useful utilities
#

FROM ubuntu:18.04

MAINTAINER Anders Zommarin <anders@zommarin.se>

RUN apt-get update && \
    apt-get install -y \
        net-tools iputils-ping iproute2 ethtool dnsutils \
        htop \
        emacs-nox \
        less \
        zsh

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
CMD ["--help"]
