#/bin/bash

set -m
CONFIG_FILE="/config/telegraf.conf"

if [ "${INFLUXDB_HOST}" == "**None**" ]; then
  unset INFLUXDB_HOST
fi

echo "=> Starting Telegraf ..."

exec telegraf -config ${CONFIG_FILE}
