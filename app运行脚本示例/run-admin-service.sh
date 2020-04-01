echo "zeus-server-service-admin-provider"
docker-compose -f admin-provider-docker-compose.yml down
docker rmi 49.233.78.39:5000/zeus-server-service-admin-provider:v1.0.0
docker-compose -f admin-provider-docker-compose.yml up -d


echo "zeus-server-service-admin-consumer"
docker-compose -f admin-consumer-docker-compose.yml down
docker rmi 49.233.78.39:5000/zeus-server-service-admin-consumer:v1.0.0
docker-compose -f admin-consumer-docker-compose.yml up -d
