#!/bin/bash

dotnet publish -c Release
cp -R myWebApp.service /etc/systemd/system/
cp -R myWebApp.conf /etc/nginx/conf.d/
