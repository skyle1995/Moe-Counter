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

### port
```ini
3000:you port
```

### mongoDB
```ini
/etc/Moe-counter/count.db:/usr/local/src/Moe-counter/count.db
```


### variable
```ini
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NODE_VERSION=16.13.1
YARN_VERSION=1.22.15
NPM_MIRROR=https://registry.npmmirror.com
```
