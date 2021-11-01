#!/usr/bin/env bash
export PGPASSWORD=$POSTGRES_PASSWORD
export PGPASSWD=$POSTGRES_PASSWORD
cp -fv /host/pgconf/* /var/lib/postgresql/data
set -ex
if (echo 'select 1'|psql -vON_ERROR_STOP=1 \
 "postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@db/$POSTGRES_DB" \
    );then
    dropdb -f -h db -U $POSTGRES_USER $POSTGRES_DB
fi
createdb -h db -U $POSTGRES_USER -O $POSTGRES_USER $POSTGRES_DB
pg_dump -Fc -h olddb -U $POSTGRES_USER $POSTGRES_DB \
| pg_restore -h db -U $POSTGRES_USER -d $POSTGRES_DB
# vim:set et sts=4 ts=4 tw=80:
