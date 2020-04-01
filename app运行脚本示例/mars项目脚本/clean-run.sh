#!/bin/bash
echo "mars-server-service-order-provider"
docker stop mars-server-service-order-provider
docker rm  mars-server-service-order-provider

echo "mars-server-service-shop-provider"
docker stop mars-server-service-shop-provider
docker rm mars-server-service-shop-provider


echo "mars-server-service-admin-provider"
docker stop mars-server-service-admin-provider
docker rm mars-server-service-admin-provider

echo "mars-server-service-pay-provider"
docker stop mars-server-service-pay-provider
docker rm mars-server-service-pay-provider

echo "mars-service-redis-provider"
docker stop mars-service-redis-provider
docker rm mars-service-redis-provider

echo "mars-service-alioss"
docker stop  mars-service-alioss
docker rm  mars-service-alioss

echo "mars-service-sso"
docker stop  mars-service-sso
docker rm  mars-service-sso

echo "mars-server-service-user-provider"
docker stop  mars-server-service-user-provider
docker rm  mars-server-service-user-provider

echo "mars-service-gateway"
docker stop  mars-service-gateway
docker rm  mars-service-gateway


echo "mars-server-service-admin-consumer"
docker stop  mars-server-service-admin-consumer
docker rm  mars-server-service-admin-consumer

echo "mars-server-service-admin-consumer"
docker stop  mars-server-service-order-consumer
docker rm  mars-server-service-order-consumer

echo "mars-server-service-shop-consumer"
docker stop  mars-server-service-shop-consumer
docker rm  mars-server-service-shop-consumer


echo "mars-server-service-user-consumer"
docker stop  mars-server-service-user-consumer
docker rm  mars-server-service-user-consumer

docker rmi 118.31.122.157:5000/mars-server-service-user-provider:v1.0.0   
docker rmi 118.31.122.157:5000/mars-service-sso:v1.0.0      
docker rmi 118.31.122.157:5000/mars-service-alioss:v1.0.0             
docker rmi 118.31.122.157:5000/mars-server-service-pay-provider:v1.0.0            
docker rmi 118.31.122.157:5000/mars-server-service-shop-provider:v1.0.0         
docker rmi 118.31.122.157:5000/mars-server-service-admin-provider:v1.0.0             
docker rmi 118.31.122.157:5000/mars-server-service-order-provider:v1.0.0           
docker rmi 118.31.122.157:5000/mars-service-redis-provider:v1.0.0   
docker rmi 118.31.122.157:5000/mars-server-service-shop-consumer:v1.0.0              
docker rmi 118.31.122.157:5000/mars-server-service-user-consumer:v1.0.0                        
docker rmi 118.31.122.157:5000/mars-service-gateway:v1.0.0   
docker rmi 118.31.122.157:5000/mars-server-service-admin-consumer:v1.0.0             
docker rmi 118.31.122.157:5000/mars-server-service-order-consumer:v1.0.0   