FROM ghcr.io/boltops-tools/terraspace:latest

RUN apt-get update && apt-get install build-essential jq -y
COPY prompt.sh /tmp/prompt.sh
RUN cat /tmp/prompt.sh >> /root/.bashrc
RUN rm -f /tmp/prompt.sh

WORKDIR /work
