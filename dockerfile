FROM node:12.9.1-alpine

RUN npm install -g firebase-tools@7.3.0

ENTRYPOINT ["/usr/local/bin/firebase"]
