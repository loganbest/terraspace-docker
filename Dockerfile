FROM ghcr.io/boltops-tools/terraspace:latest

COPY prompt.sh /tmp/prompt.sh
RUN apt-get update && apt-get install build-essential jq -y
RUN cat /tmp/prompt.sh >> /root/.bashrc && rm -f /tmp/prompt.sh

WORKDIR /work
