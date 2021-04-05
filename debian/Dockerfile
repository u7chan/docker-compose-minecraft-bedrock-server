FROM debian:latest AS build-env

ARG VERSION

ENV SERVER_NAME bedrock-server
ENV SERVER_DIR /home/${SERVER_NAME}

WORKDIR $SERVER_DIR

ADD launch.sh launch.sh
ADD backup.sh backup.sh
ADD restore.sh restore.sh

RUN apt update && apt-get install -y \ 
  curl \
  unzip

RUN mkdir -p data/backup && mkdir -p data/restore
RUN curl -0 https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip --output ${SERVER_NAME}.zip
RUN unzip ${SERVER_NAME}.zip
RUN rm -r ${SERVER_NAME}.zip


FROM debian:latest

ENV SERVER_NAME bedrock-server
ENV SERVER_DIR /home/${SERVER_NAME}

RUN apt update && apt-get install -y \
  curl \
  zip

WORKDIR $SERVER_DIR

EXPOSE 19132/udp
VOLUME "${SERVER_DIR}/data"

COPY --from=build-env ${SERVER_DIR} ${SERVER_DIR}

ENTRYPOINT "${SERVER_DIR}/launch.sh"