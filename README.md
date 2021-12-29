# lwbase

The lwbase is laravel8 + wordpess(newest) web application.
Git clone
```
$ git clone https://github.com/roughlang/lwbase.git lwbase
```

## docker for lwbase

Change to the app directory.
```
$ cd lwbase
$ cd app
```

Preparation of storage directory.
```
$ mkdir -p storage/framework/app/cache
$ mkdir -p storage/framework/app/compile
$ mkdir -p storage/framework/cache/data
$ mkdir -p storage/framework/sessions
$ mkdir -p storage/framework/views
$ mkdir -p storage/logs
```
In some cases.
```
$ chmod 777 storage/framework/app/cache
$ chmod 777 storage/framework/app/compile
$ chmod 777 storage/framework/cache/data
$ chmod 777 storage/framework/sessions
$ chmod 777 storage/framework/views
$ chmod 777 storage/logs
```
Composer update.
```
$ php composer.phar update
```
set `.env`
```
$ cp -p .env.example .env
```
exec docker
```
$ ./vendor/bin/sail up -d
$ docker-compose down && docker-compose up -d
$ docker-compose ps
```
access: http://localhost:7350


## Create databse and connect

access: http://localhost:7350/pma/index.php  

and create database `lwbase_app`
```
user: root  
password: (empty)
```

or login to docker container and exec to create database
```
$ docker-compose ps
$ docker exec -it app_mysql_1 /bin/bash
bash-4.4# mysql -u root
mysql> show databases;
mysql> create database lwbase_app character set utf8mb4;
```

exec by artisan to exec.
```
$ ./vendor/bin/sail artisan migrate
````
success.

## Wordpress install

We usually do the initial setup in the Wordpress GUI.
Information for database to connect
```
databse: lwbase_app
user: root
password: (empty)
host: mysql
```

http://localhost:7350/ac/wp-admin
```
user: user
password: password
```
