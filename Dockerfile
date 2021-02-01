FROM node:15.7-alpine

# TODO compact this

RUN apk update; apk add python
RUN apk add build-base

WORKDIR /app

COPY package*.json ./

RUN npm install

# ENV NODE_ENV=production

COPY app/ ./app
COPY docs/ ./docs
COPY gulp/ ./gulp
COPY lib/ ./lib
COPY *.js ./
COPY start.sh ./

CMD ["./start.sh"]
