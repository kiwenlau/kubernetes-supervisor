#!/bin/bash

# echo -e "\nbuild kubernetes image...\n"
# cd kubernetes
# sudo docker build -t kiwenlau/kubernetes-shell:1.0.7 .

docker rm -f kubernetes > /dev/null

echo -e "\nstart kubernetes container, please wait for 10 seconds..."
docker run -it -d --privileged --name=kubernetes --hostname=kubernetes kiwenlau/kubernetes-shell:1.0.7 >/dev/null

# wait for kubenetes to setup
sleep 10

echo -e "\nget into kubernetes container\n"
docker exec -it kubernetes bash