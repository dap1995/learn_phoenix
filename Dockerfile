FROM elixir:latest

MAINTAINER Daniel André <daniel@16hop.com.br>

RUN apt-get update && apt-get install -qy nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir /phoenixapp
WORKDIR /phoenixapp

COPY ./ /phoenixapp
ENV MIX_ENV prod
RUN mix local.hex --force
RUN mix deps.get
ENV PORT 8080

RUN mix compile

CMD mix ecto.create && mix ecto.migrate && mix phoenix.server
