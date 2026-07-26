FROM ghcr.io/rxelelo/yolks-debian-user

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
USER git
