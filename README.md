# docker-was-hellowworld
Docker for WebSphere Application Server - 8.5.5

## Build Docker Image
docker build -t hello .

## Run Docker Image
docker run --name was8 -h was8 -p 9043:9043 -p 9443:9443 -d hello

## Admin Console 
https://localhost:9043/ibm/console/login.do?action=secure

## Hello World 
https://localhost:9443/HelloWorld/hello



