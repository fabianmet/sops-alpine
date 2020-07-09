FROM alpine:3.12.0

ENV SOPS_VERSION=3.5.0

RUN wget -O /usr/local/bin/sops https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}}/sops-v${SOPS_VERSION}}.linux && \
    chmod +x /usr/local/bin/sops

RUN addgroup -S sops && adduser -s /bin/ash sops -G sops --disabled-password
USER sops

WORKDIR /home/sops