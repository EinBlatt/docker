
  git clone --depth 1 https://github.com/nacos-group/nacos-docker.git

  cd nacos-docker


*单机 Derby版

  docker-compose -f example/standalone-derby.yaml up

* 单机 Mysql版


  docker-compose -f example/standalone-mysql.yaml up


* 集群


  docker-compose -f example/cluster-hostname.yaml up 



 
* 访问地址
  
 #这个版本登录不需要密码,访问直接进入首页 可能是操作问题
  link：http://127.0.0.1:8848/nacos/


#这个版本可以使用密码
nacos1.1.3
https://blog.csdn.net/m0_37829442/article/details/102550702


ps:官方可能会更新 compose文件也会随之更新 





