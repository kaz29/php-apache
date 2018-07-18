# php-apache

[PHP公式 Docker](https://github.com/docker-library/php) を元に、pgsql/pdo/intl/zip を追加したもの。

## 7.2

### build 

```
$ cd 7.2
$ docker build -t kaz29/php-apache:7.2 .
```

### run 

```
$ docker run -it --rm -d --name php-apache kaz29/php-apache:7.2
```
