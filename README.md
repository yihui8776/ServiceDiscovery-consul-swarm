# ServiceDiscovery-consul-swarm
# deploy consul cluster with docker swarm mode
一般部署步骤  
1、先搭建好docker 并把服务器节点组建docker swarm mode集群  
2、docker swarm mode 节点增加标签，以实用constraints来限制部署节点IP  
例如 docker node update --label-add host_ip=192.168.0.2 master  
3、运行sh文件  
  
这只是测试使用基础模板，生产建议增加安全策略，如 Access Control Lists (ACLs) ，  
另外预留了IP地址，建议增加agent，部署server和client agent 的高可用和负载均衡。   
