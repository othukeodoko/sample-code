#!/bin/bash
pwd
ls -al
ls /home/ubuntu
dotnet publish -c Release
cp -R ./myWebApp.service /etc/systemd/system/
cp -R ./myWebApp.conf /etc/nginx/conf.d/
