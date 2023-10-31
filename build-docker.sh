#!/bin/bash

echo "开始编译前端，版本: "$1

if [ ! -n "$1" ] ;then
    echo "请输入版本号"
    exit
fi

docker build -t registry.cn-hangzhou.aliyuncs.com/education-portal/termius-plus:webssh-$1 .

#docker login registry.cn-hangzhou.aliyuncs.com

docker push registry.cn-hangzhou.aliyuncs.com/education-portal/termius-plus:webssh-$1


