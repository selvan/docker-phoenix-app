FROM selvan/phoenix:latest

MAINTAINER selvan <p.thamarai@gmail.com>

ADD . /code
WORKDIR /code
RUN mix do deps.get, deps.compile
RUN npm install

ENV MIX_ENV prod
RUN mix do compile

RUN node_modules/brunch/bin/brunch build --production

CMD mix phoenix.server

EXPOSE  4000
