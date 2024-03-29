# Cactus Fake Image CDN
[![Build Status](https://travis-ci.org/Krystian19/cactus-fake-image-cdn-service.svg?branch=master)](https://travis-ci.org/Krystian19/cactus-fake-image-cdn-service) [![Codacy Badge](https://app.codacy.com/project/badge/Grade/6062ee5365584a9ab5d78db880026793)](https://www.codacy.com/gh/Krystian19/cactus-fake-image-cdn-service/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Krystian19/cactus-fake-image-cdn-service&amp;utm_campaign=Badge_Grade) [![Test Coverage](https://codecov.io/gh/Krystian19/cactus-fake-image-cdn-service/branch/master/graph/badge.svg)](https://codecov.io/gh/Krystian19/cactus-fake-image-cdn-service)

Use this service to mimic a real content delivery network that serves image files for local development.

## Requirements
```sh
docker -v
  Docker version 18.03.0-ce # Or later
```

## Docker-compose setup example
How to use it inside a docker-compose file:
```yaml
version: '3'

services:
  cactus_image_cdn: # cactus-image-cdn service
    container_name: cactus_img_cdn
    build:
      ./cactus-image-cdn
    volumes:
      - ./cactus-image-cdn/images/:/var/www
    ports: ['8000:80']
```

## Standalone Setup
Inside the project's directory ...

Build the docker image:
```
docker build --no-cache -t janguzman/cactus_image_cdn .
```

### Run the project

Then create docker container. (Note: where "$(pwd)" is the absolute path to your local repo):
```sh
docker run -ti --name=cactus_img_cdn -d -v $(pwd)/images/:/var/www -p 8000:80 janguzman/cactus_image_cdn
```

## Usage instructions
Just place the images inside the src/img directory. And refer to the image by the fullname of the file (including the file extension):
```
http://localhost:8000/test.jpg
```

## License
MIT © [Jan Guzman](https://github.com/Krystian19)
