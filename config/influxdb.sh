#!/usr/bin/env bash
echo ">>>>> influxdb.sh <<<<<"

echo ">>>>> SHOW DATABASES <<<<<"
influx -execute 'SHOW DATABASES'
echo ">>>>> CREATE DATABASE hyperledger <<<<<"
influx -execute 'CREATE DATABASE hyperledger'
echo ">>>>> SHOW DATABASES <<<<<"
influx -execute 'SHOW DATABASES'

echo ">>>>> SHOW USERS <<<<<"
influx -database 'hyperledger' -execute 'SHOW USERS'
echo ">>>>> CREATE USER admin <<<<<"
influx -database 'hyperledger' -execute "CREATE USER 'admin' WITH PASSWORD 'admin' WITH ALL PRIVILEGES"
