#!/bin/bash

# Solicitar ao usuário o token do SonarQube
echo -n "Por favor, insira o token do SonarQube: "
read SONAR_TOKEN
echo ""

echo "Executando o SonarScanner..."
docker exec -it sonar-scanner sonar-scanner \
  -Dsonar.projectKey=dvwa \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://sonarqube:9000 \
  -Dsonar.login=$SONAR_TOKEN

echo "Análise do SonarScanner concluída."
