FROM ghcr.io/rxelelo/yolks-debian-user

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

RUN usermod -u 979 git && \
    groupmod -g 979 git
USER git
