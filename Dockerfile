FROM ghcr.io/rxelelo/yolks-debian-user

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-client sudo && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
USER git
entrypoint.sh: (same dir as Dockerfile)
#!/bin/bash
CURRENT_USER=$(whoami)
if [ "$CURRENT_USER" != "git" ]; then
    usermod -l git "$CURRENT_USER" 2>/dev/null
    groupmod -n git "$CURRENT_USER" 2>/dev/null
fi
exec "$@"
