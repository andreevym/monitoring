#!/usr/bin/env bash
influx -execute 'SHOW DATABASES'
influx -execute 'CREATE DATABASE hyperledger'
influx -execute 'SHOW DATABASES'

influx -database 'hyperledger' -execute 'SHOW USERS'
influx -database 'hyperledger' -execute 'CREATE USER "admin" WITH PASSWORD "admin" WITH ALL PRIVILEGES'
