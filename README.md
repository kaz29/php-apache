# php-apache

[PHP公式 Docker](https://github.com/docker-library/php) を元に、pgsql/pdo/intl/zip を追加したもの。

## 8.0.8

### build 

```
$ cd 8.0.8
$ docker build -t kaz29/php-apache:8.0.8 .
$ docker push kaz29/php-apache:8.0.8
```
### run 

```
$ docker run -it --rm -d --name php-apache-8.0.8 kaz29/php-apache:8.0.8
```

## 8.0.6

### build 

```
$ cd 8.0.6
$ docker build -t kaz29/php-apache:8.0.6 .
$ docker push kaz29/php-apache:8.0.6
```
### run 

```
$ docker run -it --rm -d --name php-apache-8.0.6 kaz29/php-apache:8.0.6
```

## 8.0

### build 

```
$ cd 8.0
$ docker build -t kaz29/php-apache:8.0.0 .
$ docker push kaz29/php-apache:8.0.0
```
### run 

```
$ docker run -it --rm -d --name php-apache-8.0.0 kaz29/php-apache:8.0.0
```

## 7.4

### build 

```
$ cd 7.4
$ docker build -t kaz29/php-apache:7.4.11 .
$ docker tag kaz29/php-apache:7.4.11 kaz29/php-apache:7.4
$ docker push kaz29/php-apache:7.4.11
$ docker push kaz29/php-apache:7.4
```

## 7.4-mysql

### build

```
$ cd 7.4
$ docker build -f Dockerfile.mysql -t kaz29/php-apache:7.4.11-mysql .
$ docker tag kaz29/php-apache:7.4.11-mysql kaz29/php-apache:7.4-mysql
$ docker push kaz29/php-apache:7.4.11-mysql
$ docker push kaz29/php-apache:7.4-mysql
```

## 7.3

### build 

```
$ cd 7.3
$ docker build -t kaz29/php-apache:7.3.19 .
$ docker tag kaz29/php-apache:7.3.19 kaz29/php-apache:7.3
$ docker push kaz29/php-apache:7.3.19
$ docker push kaz29/php-apache:7.3

```

## 7.2

### build 

```
$ cd 7.2
$ docker build -t kaz29/php-apache:7.2.21 .
$ docker tag kaz29/php-apache:7.2.21 kaz29/php-apache:7.2
$ docker tag kaz29/php-apache:7.2.21 kaz29/php-apache:latest
$ docker push kaz29/php-apache:7.2.21
$ docker push kaz29/php-apache:7.2

$ docker build -f Dockerfile.mysql -t kaz29/php-apache:7.2-mysql .

```

## 7.1

### build 

```
$ cd 7.1
$ docker build -t kaz29/php-apache:7.1.32 .
$ docker push kaz29/php-apache:7.1.32
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

## fpm/7.0

### build

```
$ cd fpm/7.0/
$ docker build -t tamurayk/php-fpm:7.0.33 .
$ docker tag tamurayk/php-fpm:7.0.33 tamurayk/php-fpm:7.0
$ docker push tamurayk/php-fpm:7.0
$ docker push tamurayk/php-fpm:7.0.33
```

## fpm/7.3

### build

```
$ cd fpm/7.3/
$ docker build -t tamurayk/php-fpm:7.3.9 .
$ docker tag tamurayk/php-fpm:7.3.9 tamurayk/php-fpm:7.3
$ docker push tamurayk/php-fpm:7.3
$ docker push tamurayk/php-fpm:7.3.9
```