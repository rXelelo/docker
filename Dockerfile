FROM ghcr.io/ptero-eggs/yolks:debian

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 git && \
    userdel -r container && \
    useradd -m -d /home/container -s /bin/bash -u 1000 -g 1000 git
USER git
