#!/bin/bash

# echo -e "\nbuild kubernetes image...\n"
# cd kubernetes
# sudo docker build -t kiwenlau/kubernetes-supervisor:1.0.7 .

docker rm -f kubernetes > /dev/null

echo -e "\nstart kubernetes container..."
docker run -it -d --privileged --name=kubernetes --hostname=kubernetes kiwenlau/kubernetes-supervisor:1.0.7 >/dev/null

echo -e "\nget into kubernetes container\n"
docker exec -it kubernetes bash