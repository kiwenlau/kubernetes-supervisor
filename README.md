##项目简介

该项目中，我将kubernetes的所有组件：etcd, controller manager, apiserver, scheduler, kubelet, proxy以及docker daemon均运行在同一个Docker容器之中。

容器启动时，各个组件由一个supervisor启动。

![alt text](https://github.com/kiwenlau/kubernetes-supervisor/raw/master/kubernetes-supervisor.png)

##运行步骤

1.克隆GitHub仓库

```
git clone https://github.com/kiwenlau/kubernetes-supervisor
cd kubernetes-supervisor/
```

2.下载Docker镜像

```
sudo docker pull kiwenlau/kubernetes-supervisor:1.0.7
```

3.运行Kubernetes

```
chmod +x run.sh
./run.sh
```

kubernetes容器启动时间需要10秒。运行成功后直接进入了kubernetes容器。

4.测试kubernetes

```
./test-kubernetes.sh 
```

该测试将创建一个pod，运行nginx




