����mysql8.0���� docker-compose

���ܻ����һЩ����

mysql 8.0  ���������֤  ��Authentication plugin 'caching_sha2_password' cannot be loaded����

�����ԭ���Ǵ�MySQL8.0 ��ʼ��Ĭ�ϵļ��ܹ���ʹ�õ��� caching_sha2_password

docker�������е�mysql [Ĭ������Ϊadmin]
���������

docker exec -it ����id /bin/bash

mysql -u root -p    (��������admin����)

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'admin';