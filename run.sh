#!/bin/bash

docker run -d -P --name reggie-server -p 1234:1234 --restart=always -v `pwd`/data:/data alteraid/reggie:latest
