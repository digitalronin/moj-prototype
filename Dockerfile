FROM node:15.7-alpine

ENV NODE_ENV=production

RUN addgroup -g 1000 -S appgroup \
  && adduser -u 1000 -S appuser -G appgroup \
  && apk update \
  && apk add build-base python

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY app/ ./app
COPY docs/ ./docs
COPY gulp/ ./gulp
COPY lib/ ./lib
COPY *.js ./
COPY start.sh ./

RUN chown -R appuser:appgroup /app

USER 1000

CMD ["./start.sh"]
