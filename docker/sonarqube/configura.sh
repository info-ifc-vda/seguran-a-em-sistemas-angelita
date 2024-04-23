#!/bin/bash

# Start SonarQube and PostgreSQL only
docker-compose up -d postgresql sonarqube

# Wait for SonarQube to be ready
echo "Waiting for SonarQube to start up..."
while ! curl --fail -u admin:bitnami http://localhost:9000/api/system/health; do
    sleep 10
done
echo "SonarQube is up and running!"

# Generate SonarQube token
RESPONSE=$(curl -s -u admin:bitnami -X POST "http://localhost:9000/api/user_tokens/generate?name=scanner-token")
TOKEN=$(echo $RESPONSE | grep -oP '(?<="token":")[^"]*')
export SONAR_TOKEN=$TOKEN

# Start the remaining services
docker-compose up -d dvwa sonar-scanner
