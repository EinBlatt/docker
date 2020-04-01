这是mysql8.0以上 docker-compose

可能会出现一些问题

mysql 8.0  密码出现认证  “Authentication plugin 'caching_sha2_password' cannot be loaded”。

问题的原因：是从MySQL8.0 开始，默认的加密规则使用的是 caching_sha2_password

docker容器运行的mysql [默认密码为admin]
解决方法：

docker exec -it 容器id /bin/bash

mysql -u root -p    (输入密码admin进入)

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'admin';