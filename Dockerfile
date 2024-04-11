FROM ghcr.io/boltops-tools/terraspace:latest

ENV TWINGATE_API_TOKEN="vNpHhU6dqsQRwwNcu91R4zJ9a8V3myH1boA9X8IryQH5CYrDj8-IcN93HG0XT-FPnTTmOF15b-eZyk7xxLr-x5ftUHgf2syk4d6JoE2WLDVn6SKCFBUFtwwShV6CNLTbogSDrA"

RUN apt-get update && apt-get install build-essential jq -y
COPY prompt.sh /tmp/prompt.sh
RUN cat /tmp/prompt.sh >> /root/.bashrc
RUN rm -f /tmp/prompt.sh

WORKDIR /work
