# Moe-counter-docker-zh

多种风格可选的萌萌计数器

本仓库仅作为构建Docker镜像使用

源项目：[https://github.com/journey-ad/Moe-counter](https://github.com/journey-ad/Moe-counter)

![Moe-counter](https://count.getloli.com/get/@Moe-counter.github)

## Demo
[https://count.getloli.com](https://count.getloli.com)

## Usage

### Shell
```shell
mkdir -p /etc/Moe-counter
touch /etc/Moe-counter/count.db
docker run -d --restart=always -v /etc/Moe-counter/count.db:/usr/local/src/Moe-counter/count.db -p 3000:3000 --name="moe" skyle1995/moe-counter-docker:latest
```
### Compose
```ini
 moe-counter-docker:
    image: skyle1995/moe-counter-docker:latest
    ports:
      - "3000:3000"
    restart: always
    container_name: moe-counter-docker
    networks:
      - webapp
    volumes:
      - /etc/Moe-counter/count.db:/usr/local/src/Moe-counter/count.db
#使用sqlite请将count.db文件放置于宿主机，挂载于容器中，以防止容器重建时丢失数据
```

### default config.yml
```ini
app:
  port: 3000

db:
  type: mongodb # sqlite or mongodb
```
### docker pull docker.io
```shell
docker pull skyle1995/moe-counter-docker:latest
```
### docker pull aliyuncs.com
```shell
docker pull registry.cn-hangzhou.aliyuncs.com/skyle1995/moe-counter-docker:latest
```
### docker pull tencentyun.com
```shell
docker pull ccr.ccs.tencentyun.com/skyle1995/moe-counter-docker:latest
```
