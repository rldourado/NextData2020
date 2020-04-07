#!/bin/bash

docker run --name mysql -e MYSQL_ROOT_PASSWORD=next --detach --publish 3306:3306 mysql:5.7.29
