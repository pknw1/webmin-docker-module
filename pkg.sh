#!/bin/bash
if [[ -d /tmp/dockerinfo ]];then rm -rf /tmp/dockerinfo; fi
if [[ -f /tmp/dockerinfo.wbm.gz ]]; then rm /tmp/dockerinfo.wbm.gz; fi
DEV=$(pwd)
VERSION=$(cat module.info |grep version | awk -F= '{print $2}')
mkdir -p /tmp/dockerinfo
cp -R * /tmp/dockerinfo/
cd /tmp
tar -zcvf ./dockerinfo-$VERSION.wbm.gz dockerinfo
cd $DEV && cp /tmp/dockerinfo-$VERSION.wbm.gz .