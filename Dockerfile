FROM ghcr.io/ptero-eggs/yolks:debian

RUN useradd -m -d /home/container -s /bin/bash git 2>/dev/null || true
RUN chown -R git:git /home/container

USER git
