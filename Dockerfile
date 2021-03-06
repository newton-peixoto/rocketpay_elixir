# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:1.11.3

RUN apt-get update && \
  apt-get install -y postgresql-client

# Create app directory and copy the Elixir projects into it
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force

RUN mix deps.get
RUN mix local.rebar --force
# Compile the project
RUN mix do compile

EXPOSE 4000

CMD ./entrypoint.sh