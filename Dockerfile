FROM alpine:3.10.3
LABEL maintainer="github.com/robertbeal"

RUN apk add --no-cache --virtual=build-dependencies \
    build-base \
    git \
    libxml2-dev \
    libxslt-dev \
    python3-dev \
  && apk add --no-cache \
    ffmpeg \
    libxml2 \
    python3 \
    su-exec \
  && python3 -m pip --no-cache-dir install \
    gmusicapi \
    git+https://github.com/thebigmunch/gmusicapi-scripts \
  && apk del --purge build-dependencies \
  && rm -rf /tmp/* \
  && addgroup -S gmusicapi \
  && adduser -G gmusicapi -D -h /config -s /bin/false gmusicapi

ENV HOME /config

COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
