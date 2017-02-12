echo "init-grafana.cmd"

apt-get update
apt-get -y install curl
curl -v POST http://grafana:3000/api/datasources -d @/etc/grafana/scripts/datasource.json --header 'Content-Type: application/json' --header 'Authorization: Basic YWRtaW46YWRtaW4='
