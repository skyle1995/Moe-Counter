# Moe-counter

多种风格可选的萌萌计数器

本仓库仅作为构建Docker镜像使用

## Demo
[https://count.getloli.com](https://count.getloli.com)

## Usage

### docker pull

```shell
$ docker pull registry.cn-hangzhou.aliyuncs.com/skyle1995/moe-counter-docker:latest
```

### variable
```ini
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NODE_VERSION=16.13.1
YARN_VERSION=1.22.15
NPM_MIRROR=https://registry.npmmirror.com
```
docker环境变量

### port
```text
3000:8081
```
将内部端口3000映射到公网8081

### mongoDB
```text
/etc/Moe-counter/count.db:/usr/local/src/Moe-counter/count.db
```
映射数据文件路径到容器
