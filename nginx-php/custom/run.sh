#!/bin/bash

dataPath=$(cd "$(dirname "$0")"; pwd)

echo $dataPath

docker run -d -v $dataPath/data:/data -p 80:80 weisd/nginx-php
