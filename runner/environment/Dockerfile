FROM gitlab/gitlab-runner
MAINTAINER einblatt <einblatt@163.com>

# 修改软件源
RUN echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse' > /etc/apt/sources.list && \
    echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse' >> /etc/apt/sources.list && \
    echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse' >> /etc/apt/sources.list && \
    echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse' >> /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get clean

# 安装 Docker
RUN apt-get -y install apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update -y && \
    apt-get install -y docker-ce
COPY daemon.json /etc/docker/daemon.json

# 安装 Docker Compose
WORKDIR /usr/local/bin
#RUN wget https://raw.githubusercontent.com/topsale/resources/master/docker/docker-compose
#RUN chmod +x docker-compose

RUN curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# 安装 Java
RUN mkdir -p /usr/local/java
WORKDIR /usr/local/java
COPY jdk-8u211-linux-x64.tar_2.gz /usr/local/java
RUN tar -zxvf jdk-8u211-linux-x64.tar_2.gz && \
    rm -fr jdk-8u211-linux-x64.tar_2.gz

# 安装 Maven
RUN mkdir -p /usr/local/maven
WORKDIR /usr/local/maven
# RUN wget https://raw.githubusercontent.com/topsale/resources/master/maven/apache-maven-3.6.1-bin.tar.gz
COPY apache-maven-3.6.1-bin.tar.gz /usr/local/maven
RUN tar -zxvf apache-maven-3.6.1-bin.tar.gz && \
    rm -fr apache-maven-3.6.1-bin.tar.gz
# COPY settings.xml /usr/local/maven/apache-maven-3.6.1/conf/settings.xml

# 配置环境变量
ENV JAVA_HOME /usr/local/java/jdk1.8.0_211
ENV MAVEN_HOME /usr/local/maven/apache-maven-3.6.1
ENV PATH $PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin

WORKDIR /