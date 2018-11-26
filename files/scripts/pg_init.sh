#!/bin/bash
if [ ! -e /var/lib/pgsql/9.6/data/postgresql.conf ]
then
    su postgres -c '/usr/pgsql-9.6/bin/initdb -D /var/lib/pgsql/9.6/data --locale=ru_RU.UTF-8'
fi
