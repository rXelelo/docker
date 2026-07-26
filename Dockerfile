FROM ghcr.io/ptero-eggs/yolks:debian

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

RUN groupdel container 2>/dev/null; \
    userdel -r container 2>/dev/null; \
    groupadd -g 1000 git && \
    useradd -m -d /home/container -s /bin/bash -u 1000 -g 1000 git

USER git
