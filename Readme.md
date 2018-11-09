# Fake Image CDN
[![Build Status](https://travis-ci.org/Krystian19/fake-image-cdn.svg?branch=master)](https://travis-ci.org/Krystian19/fake-image-cdn) [![Code Climate](https://codeclimate.com/github/Krystian19/fake-image-cdn/badges/gpa.svg)](https://codeclimate.com/github/Krystian19/fake-image-cdn) [![Test Coverage](https://codeclimate.com/github/Krystian19/fake-image-cdn/badges/coverage.svg)](https://codeclimate.com/github/Krystian19/fake-image-cdn/coverage)

Use this script as a service to mimic a real content delivery network that serves image files.

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
  fake_image_cdn: # fake-image-cdn service
    build:
      ./fake-image-cdn
    volumes:
      - ./fake-image-cdn:/app
    ports: ['8000:3000']
```

## Standalone Setup

Inside the project's directory ...

Build the docker image:
```
docker build --no-cache -t janguzman/fake_image_cdn .
```

### Run the project

Then create docker container. (Note: where "$(pwd)" is the absolute path to your local repo):
```sh
docker run -ti --name=fake_img_cdn -d -v $(pwd):/app -p 8000:3000 janguzman/fake_image_cdn
```

## Run the tests
Assuming the container's name is "fake_img_cdn", run this:
```sh
docker exec -ti fake_img_cdn ava
```

## Usage instructions
Just place the images inside the src/img directory. And refere to the image by the fullname of the file (including the file extension):
```
http://localhost:8000/test.jpg
```

<!-- ### Todo list
- [x] Setup the Dockerfile.
- [ ] Setup examples and use cases. -->

## License
MIT © [Jan Guzman](https://github.com/Krystian19)
