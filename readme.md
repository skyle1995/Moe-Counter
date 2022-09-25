# Moe-counter

多种风格可选的萌萌计数器

本仓库仅作为构建Docker镜像使用

源项目：[https://github.com/journey-ad/Moe-counter](https://github.com/journey-ad/Moe-counter)

## Demo
[https://count.getloli.com](https://count.getloli.com)

## Usage

### auto install
```shell
docker run -d --restart=always -v /etc/Moe-counter/count.db:/usr/local/src/Moe-counter/count.db -p 3000:3000 --name="moe" skyle1995/moe-counter-docker:latest
```
一键拉取安装docker镜像

## 以下为手动安装信息

### docker pull docker.io

```shell
docker pull skyle1995/moe-counter-docker:latest
```

### docker pull aliyuncs.com

```shell
docker pull registry.cn-hangzhou.aliyuncs.com/skyle1995/moe-counter-docker::latest
```

下载镜像包到本地docker

### variable
```ini
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NODE_VERSION=16.17.0
YARN_VERSION=1.22.19
NPM_MIRROR=https://registry.npmmirror.com
```
配置docker容器环境变量

### port
```text
3000:8081
```
将容器端口3000映射到公网8081端口

### mongoDB
```text
/etc/Moe-counter/count.db:/usr/local/src/Moe-counter/count.db
```
将本机数据文件映射到容器
