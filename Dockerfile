FROM ghcr.io/ptero-eggs/yolks:debian

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

RUN usermod -l git container && \
    groupmod -n git container
USER git
