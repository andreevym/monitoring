echo ">>>>>>>>>> Start <<<<<<<<<<<<"

echo ">>>>>>>>>> docker stop, rm influxdb <<<<<<<<<<<<"
docker stop $(docker ps -aq --filter name=/influxdb)
docker rm $(docker ps -aq --filter name=/influxdb)

echo ">>>>>>>>>> docker stop, rm grafana <<<<<<<<<<<<"
docker stop $(docker ps -aq --filter name=/grafana)
docker rm $(docker ps -aq --filter name=/grafana)


#!/usr/bin/env bash
echo ">>>>>>>>>> initializing docker images <<<<<<<<<<<<"
docker-compose up -d
echo ">>>>>>>>>> create db for influxdb <<<<<<<<<<<<"
docker-compose exec influxdb sh /usr/local/influxdb.sh
echo ">>>>>>>>>> configuring grafana datasource <<<<<<<<<<<<"
docker-compose exec grafana sh /etc/grafana/scripts/grafana.cmd
echo ">>>>>>>>>> End <<<<<<<<<<<<"
