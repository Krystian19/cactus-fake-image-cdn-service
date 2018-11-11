# Cactus Fake Image CDN
[![Build Status](https://travis-ci.org/Krystian19/cactus-fake-image-cdn-service.svg?branch=master)](https://travis-ci.org/Krystian19/cactus-fake-image-cdn-service) [![Code Climate](https://codeclimate.com/github/Krystian19/cactus-fake-image-cdn-service/badges/gpa.svg)](https://codeclimate.com/github/Krystian19/cactus-fake-image-cdn-service) [![Test Coverage](https://codeclimate.com/github/Krystian19/cactus-fake-image-cdn-service/badges/coverage.svg)](https://codeclimate.com/github/Krystian19/cactus-fake-image-cdn-service/coverage)

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
    build:
      ./cactus-image-cdn
    volumes:
      - ./cactus-image-cdn/src/img/:/app/src/img/
    ports: ['8000:3000']
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
docker run -ti --name=cactus_img_cdn -d -v $(pwd)/src/img/:/app/src/img/ -p 8000:3000 janguzman/cactus_image_cdn
```

## Run the tests
Assuming the container's name is "cactus_img_cdn", run this:
```sh
docker exec -ti cactus_img_cdn ava
```

## Usage instructions
Just place the images inside the src/img directory. And refer to the image by the fullname of the file (including the file extension):
```
http://localhost:8000/test.jpg
```

<!-- ### Todo list
- [x] Setup the Dockerfile.
- [ ] Setup examples and use cases. -->

## License
MIT © [Jan Guzman](https://github.com/Krystian19)
