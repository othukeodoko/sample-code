#!/bin/bash

if (ps aux | grep myWebApp | grep -v grep)
  then
      systemctl stop myWebApp
fi