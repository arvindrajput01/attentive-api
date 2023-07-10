#!/bin/sh
set -e

# For development, check if the gems are installed, if not then install them
if ! bundle check ; then
    bundle install
fi

# Remove a potentially pre-existing server.pid for Rails
rm -f /app/tmp/pids/server.pid

# Check if the database exists
# Create the database
bundle exec rake db:create

# Run database migrations
bundle exec rake db:migrate

# Run the command
exec "$@"
