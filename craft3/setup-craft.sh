#!/bin/bash

mkdir source
docker-compose run fpm3 composer create-project craftcms/craft /app -s beta

shastring=$(echo -n password | shasum -a 1 | awk '{print $1}')

cat << EOF > source/.env
# The database driver that will used ('mysql' or 'pgsql')
DB_DRIVER="mysql"

# The database server name or IP address (usually this is 'localhost' or '127.0.0.1')
DB_SERVER="db"

# The database username to connect with
DB_USER="root"

# The database password to connect with
DB_PASSWORD=""

# The name of the database to select
DB_DATABASE="craft"

# The database schema that will be used (PostgreSQL only)
DB_SCHEMA="public"

# The prefix that should be added to generated table names (only necessary if multiple things are sharing the same database)
DB_TABLE_PREFIX=""


# The secure key Craft will use for hashing and encrypting data
SECURITY_KEY="$shastring"
EOF
