FROM alpine:3.12.0

RUN addgroup -S sops && adduser -s /bin/ash sops -G sops --disabled-password
RUN wget -O /home/sops/sops https://github.com/mozilla/sops/releases/download/v3.5.0/sops-v3.5.0.linux && chmod +x /home/sops/sops
USER sops

WORKDIR /home/sops


