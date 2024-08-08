#!/bin/bash
pwd
ls -al
ls /home/ubuntu
cd /home/ubuntu
dotnet publish -c Release
cp -R scripts/myWebApp.service /etc/systemd/system/
cp -R scripts/myWebApp.conf /etc/nginx/conf.d/
