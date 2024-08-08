#!/bin/bash

CHECK=$(ps aux | grep myWebApp | grep -v grep)
if [ ""="$CHECK"]; 
    then
        echo "myWebApp is not running"
    else
        systemctl stop myWebApp
fi
