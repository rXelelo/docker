FROM ghcr.io/ptero-eggs/yolks:debian

RUN useradd -m -d /home/container -s /bin/bash container 2>/dev/null || true

USER container
