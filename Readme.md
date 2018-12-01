[![Build Status](https://travis-ci.org/robertbeal/docker-gmusicapi.svg?branch=master)](https://travis-ci.org/robertbeal/gmusicapi)
[![](https://images.microbadger.com/badges/image/robertbeal/gmusicapi.svg)](https://microbadger.com/images/robertbeal/gmusicapi "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/robertbeal/gmusicapi.svg)](https://microbadger.com/images/robertbeal/gmusicapi "Get your own version badge on microbadger.com")
[![](https://img.shields.io/docker/pulls/robertbeal/gmusicapi.svg)](https://hub.docker.com/r/robertbeal/gmusicapi/)
[![](https://img.shields.io/docker/stars/robertbeal/gmusicapi.svg)](https://hub.docker.com/r/robertbeal/gmusicapi/)
[![](https://img.shields.io/docker/automated/robertbeal/gmusicapi.svg)](https://hub.docker.com/r/robertbeal/gmusicapi/)

```
docker run \
  --name gmusicapi \
  --init \
  --rm \
  --read-only \
  --user $(id -u):$(id -g) \
  --net host \
  --volume /home/user:/config \
  --volume /media/storage/music-drop:/music \
  robertbeal/gmusicapi \
  gmsync up --match /music
```
