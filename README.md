# php-apache

[PHP公式 Docker](https://github.com/docker-library/php) を元に、pgsql/pdo/intl/zip を追加したもの。

## 7.2

### build 

```
$ cd 7.2
$ docker build -t kaz29/php-apache:7.2.21 .
$ docker tag kaz29/php-apache:7.2.21 kaz29/php-apache:7.2
$ docker tag kaz29/php-apache:7.2.21 kaz29/php-apache:latest
$ docker push kaz29/php-apache:7.2.21
$ docker push kaz29/php-apache:7.2
$ docker push kaz29/php-apache:latest

$ docker build -f Dockerfile.mysql -t kaz29/php-apache:7.2-mysql .

```

### run 

```
$ docker run -it --rm -d --name php-apache kaz29/php-apache:7.2

$ docker run -it --rm -d --name php-apache kaz29/php-apache:7.2-mysql
```

## 5.4

### build 

```
$ cd 5.4
$ docker build -t kaz29/php-apache:5.4.42 .
$ docker tag kaz29/php-apache:5.4.42 kaz29/php-apache:5.4
$ docker push kaz29/php-apache:5.4.42
$ docker push kaz29/php-apache:5.4
```

### run 

```
$ docker run -it --rm -d --name php-apache-5.4 kaz29/php-apache:5.4
```

## batch

```
docker build -t kaz29/php-batch:7.2.15 .
```