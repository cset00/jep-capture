FROM bitwalker/alpine-elixir as builder


WORKDIR /

RUN apk update && \
  apk upgrade --no-cache && \
  apk add --no-cache \
  nodejs \
  yarn \
  git \
  build-base && \
  mix local.rebar --force && \
  mix local.hex --force


COPY mix.exs mix.lock /

RUN mix local.hex --force
# RUN mix local.rebar3 --force
RUN mix do deps.get, deps.compile, compile

EXPOSE 8080

ENTRYPOINT /bin/bash
