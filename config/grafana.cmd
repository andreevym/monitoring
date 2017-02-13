echo ">>>>> grafana.cmd <<<<<"

echo ">>>>> apt-get update <<<<<"
apt-get update
echo ">>>>> apt-get -y install curl <<<<<"
apt-get -y install curl
echo ">>>>> setup datasources <<<<<"
curl -v POST http://grafana:3000/api/datasources -d @/etc/grafana/scripts/datasource.json --header 'Content-Type: application/json' --header 'Authorization: Basic YWRtaW46YWRtaW4='
echo ">>>>> setup dashboards - Hyperledger <<<<<"
curl -X POST http://grafana:3000/api/dashboards/db -d @/etc/grafana/scripts/dashboard.json --header 'Content-Type: application/json' --header 'Authorization: Basic YWRtaW46YWRtaW4='
echo ">>>>> setup dashboards - getAuditHistory <<<<<"
curl -X POST http://grafana:3000/api/dashboards/db -d @/etc/grafana/scripts/dashboard-getAuditHistory.json --header 'Content-Type: application/json' --header 'Authorization: Basic YWRtaW46YWRtaW4='
