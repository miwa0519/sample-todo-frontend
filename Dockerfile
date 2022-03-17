ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

RUN apk update && apk upgrade && apk --no-cache add --update alpine-sdk python
RUN mkdir -p /myapp/frontend

WORKDIR /myapp/frontend

COPY . /myapp/frontend
