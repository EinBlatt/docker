#!/bin/bash


echo "mars-service-redis-provider"
docker-compose -f redis-docker-compose.yml down
docker-compose -f redis-docker-compose.yml up -d

sleep 20

echo "mars-service-gateway"
docker-compose -f gw-docker-compose.yml down

docker-compose -f gw-docker-compose.yml up -d


sleep 20

echo "mars-service-alioss"
docker-compose -f oss-docker-compose.yml down

docker-compose -f oss-docker-compose.yml up -d

sleep 20



echo "mars-server-service-admin-provider"
docker-compose -f admin-provider-docker-compose.yml down

docker-compose -f admin-provider-docker-compose.yml up -d

sleep 20


echo "mars-service-sso"
docker-compose -f sso-docker-compose.yml down
  
docker-compose -f sso-docker-compose.yml up -d


sleep 20


echo "mars-server-service-pay-provider"
docker-compose -f pay-docker-compose.yml down   

docker-compose -f pay-docker-compose.yml up -d


sleep 20

echo "mars-server-service-order-provider"

docker-compose -f order-provider-docker-compose.yml down
    
docker-compose -f order-provider-docker-compose.yml up -d

sleep 20


echo "mars-server-service-shop-provider"
docker-compose -f shop-provider-docker-compose.yml down
 
docker-compose -f shop-provider-docker-compose.yml up -d


sleep 20


echo "mars-server-service-user-provider"
docker-compose -f user-provider-docker-compose.yml down

docker-compose -f user-provider-docker-compose.yml up -d


sleep 20


echo "mars-server-service-admin-consumer"
docker-compose -f admin-consumer-docker-compose.yml down

docker-compose -f admin-consumer-docker-compose.yml up -d


sleep 20


echo "mars-server-service-order-consumer"
docker-compose -f order-consumer-docker-compose.yml down

docker-compose -f order-consumer-docker-compose.yml up -d


sleep 20


echo "mars-server-service-order-consumer"
docker-compose -f shop-consumer-docker-compose.yml down
  
docker-compose -f shop-consumer-docker-compose.yml up -d


sleep 20


echo "mars-server-service-order-consumer"
docker-compose -f user-consumer-docker-compose.yml down

docker-compose -f user-consumer-docker-compose.yml up -d


 
echo "部署完成"
            




