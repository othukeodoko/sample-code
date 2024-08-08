#!/bin/bash

if (ps aux | grep myWebApp | grep -v grep > /dev/null)
  then
      systemctl stop myWebApp
fi