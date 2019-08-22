#!/bin/bash
if [[ -d /tmp/dockerinfo ]];then rm -rf /tmp/dockerinfo; fi
if [[ -f /tmp/dockerinfo.wbm.gz ]]; then rm /tmp/dockerinfo.wbm.gz; fi

mkdir -p /tmp/dockerinfo
cp -R * /tmp/dockerinfo/
cd /tmp
tar -zcvf ./dockerinfo.wbm.gz dockerinfo
