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

## Run K8S POD
kubectl run was9-sadmin --port=9043 --port=9443 --port=9080 --port=9060 --image=docker.io/vinoth186/was9-sadmin-alias:v1

## Expose K8S Service 
kubectl create -f was9-sadmin-nodeport-svc.yaml

or 

kubectl expose deployment/was9-sadmin --type=NodePort --name=was9-sadmin --port=9080 --target-port=9080




