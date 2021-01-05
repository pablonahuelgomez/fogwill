# Que onda?

test:
    FROM +test-setup
    COPY --dir config lib test ./
    RUN mix test

bench:
    FROM +test-setup
    COPY --dir config lib test ./
    RUN mix bench

setup-base:
   ARG ELIXIR=1.11.2
   ARG OTP=23.1.1
   FROM hexpm/elixir:$ELIXIR-erlang-$OTP-alpine-3.12.0
   RUN apk add --no-progress --update git build-base
   ENV ELIXIR_ASSERT_TIMEOUT=10000
   WORKDIR /src

test-setup:
   FROM +setup-base
   COPY mix.exs .
   COPY mix.lock .
   COPY .formatter.exs .
   RUN mix local.hex --force
   RUN mix deps.get
