FROM node:10.15.3-alpine
LABEL Jan Guzman <janfrancisco19@gmail.com>

WORKDIR /app

RUN apk update && apk upgrade && \
    apk add --no-cache git

# Setup container dependencies
# RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
# RUN apt-get install -y curl git

# Install node related stuff
# RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
# RUN apt-get install -y nodejs

COPY . /app
EXPOSE 3000

# Install service manager
RUN npm install -g yarn ava-cli
RUN yarn install

CMD ["yarn", "start"]