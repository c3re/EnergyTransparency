FROM debian:13
RUN apt update && apt upgrade -y
RUN apt install -y curl jq mosquitto-clients
ENV TZ="Europe/Berlin"

ADD run /usr/local/bin
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/run"]