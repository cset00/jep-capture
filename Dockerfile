FROM elixir:1.9.1

WORKDIR /

RUN apt-get update && \
  mix local.rebar --force && \
  mix local.hex --force

COPY mix.exs mix.lock /

RUN mix do deps.get, deps.compile, compile

COPY . .

EXPOSE 8080

ENTRYPOINT /bin/bash
