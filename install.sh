#!/bin/sh

# Create symlink
ln -s /opt/pgsql924 /opt/pgsql92

# Install shell script
mkdir -p /lib/svc/method
cp ./postgresql_92 /lib/svc/method/

# Import service manifest
svccfg import manifest-postgresql-92.xml
