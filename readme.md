# Moe-counter-docker-zh

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

注意：映射数据文件后，需要先上传或者创建/etc/Moe-counter路径下的count.db文件，否则将启动失败

## default info

### docker pull docker.io

```shell
docker pull skyle1995/moe-counter-docker:latest
```

### docker pull aliyuncs.com
```shell
docker pull registry.cn-hangzhou.aliyuncs.com/skyle1995/moe-counter-docker:latest
```

### default port
```text
3000
```

### variable
```ini
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NODE_VERSION=16.17.0
YARN_VERSION=1.22.19
NPM_MIRROR=https://registry.npmmirror.com
```
