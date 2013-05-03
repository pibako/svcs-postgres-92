#!/bin/sh

# Create postgres home and data directories
mkdir -p /export/home/postgres
mkdir -p /var/postgres/9.2/data
chown -R postgres:postgres /var/postgres

# Create symlink
ln -s /opt/pgsql924 /opt/pgsql92

# Install shell script
mkdir -p /lib/svc/method
cp ./postgresql_92 /lib/svc/method/

# Import service manifest
svccfg import manifest-postgresql-92.xml
