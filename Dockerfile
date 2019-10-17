FROM elixir:1.9.1

WORKDIR /app

RUN apt-get update && \
  mix local.rebar --force && \
  mix local.hex --force

COPY mix.exs mix.lock /app/

RUN mix deps.get

RUN mix do deps.compile, compile

RUN MIX_ENV=test mix do deps.compile, compile

COPY . /app

EXPOSE 8080

ENTRYPOINT /bin/bash
