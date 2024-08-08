#!/bin/bash

systemctl daemon-reload
systemctl enable myWebApp
systemctl start myWebApp

systemctl restart nginx