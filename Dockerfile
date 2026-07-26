FROM ghcr.io/rxelelo/yolks-debian-user

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

RUN groupmod -g 979 git 2>/dev/null; \
    usermod -u 979 -g 979 git 2>/dev/null; \
    usermod -l git container 2>/dev/null; \
    groupmod -n git container 2>/dev/null; \
    usermod -d /home/container git; \
    chown git:git /home/container
USER git
