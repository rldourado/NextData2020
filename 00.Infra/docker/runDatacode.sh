#!/bin/bash

docker run -ti --name datacode --detach --publish 8000:8000 --volume `pwd`/python:/work/python --network next datacode:latest
