#!/bin/bash

echo -n "Iniciando todos os serviços necessários..."
docker-compose up -d 
echo -n "Aguardando início dos serviços. Isso pode demorar. Por favor, aguarde..."
sleep 120
echo ""
echo -n "Serviços iniciados. Verificando se o SonarQube está pronto..."
while ! curl -s -u admin:bitnami --fail http://localhost:9000/api/system/health > /dev/null; do
  sleep 10
done
echo ""
echo "SonarQube está pronto."
echo "Acesse http://localhost:9000 com as credenciais admin:bitnami"
