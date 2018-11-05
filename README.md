# jenkinsDockerInDocker

#### 项目介绍
构建可执行docker命令的jenkins镜像

#### 安装教程

docker pull julywind/jenkins

docker run -p 8080:8080 -d julywind/jenkins

#### 说明
启动后 docker中并未启动docker服务，需要在外部启动docker服务，并且打开docker的远程访问，然后在jenkins的环境变量中增加DOCKER_HOST, 如：tcp://192.168.0.10:2375