# Moe-counter

多种风格可选的萌萌计数器

本仓库仅作为构建Docker镜像使用

源项目：[https://github.com/journey-ad/Moe-counter](https://github.com/journey-ad/Moe-counter)

## Demo
[https://count.getloli.com](https://count.getloli.com)

## Usage

### docker pull

```shell
docker pull skyle1995/moe-counter-docker:latest
```
下载镜像包到本地docker

### variable
```ini
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NODE_VERSION=16.17.0
YARN_VERSION=1.22.19
NPM_MIRROR=https://registry.npmmirror.com
```
陪住docker容器环境变量

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
