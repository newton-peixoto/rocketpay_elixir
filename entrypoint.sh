# entrypoint.sh

#!/bin/bash
# Docker entrypoint script.

# Wait until Postgres is ready
while ! pg_isready -q -h $PGHOST -p $PGPORT -U $PGUSER
do
  echo "$(date) - waiting for database to start"
  sleep 2
done

if [ "$( psql -tAc "SELECT 1 FROM pg_database WHERE datname='$PGDATABASE'" )" = '1' ]
then
    echo "Database already exists"
else
    echo "Database $PGDATABASE does not exist. Creating..."
    createdb -E UTF8 $PGDATABASE -l en_US.UTF-8 -T template0
    mix ecto.migrate
    mix run priv/repo/seeds.exs
    echo "Database $PGDATABASE created."
fi
exec mix phx.server