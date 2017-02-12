#!/usr/bin/env bash
echo "initializing docker images"
docker-compose up -d
echo "create db for influxdb"
docker-compose exec influxdb sh /usr/local/influxdb.sh
echo "configuring grafana datasource"
docker-compose exec grafana sh /etc/grafana/scripts/grafana.cmd
