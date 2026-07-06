FROM ghcr.io/ptero-eggs/yolks:debian

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1001 git && \
    useradd -m -d /home/container -s /bin/bash -u 1001 -g 1001 git
