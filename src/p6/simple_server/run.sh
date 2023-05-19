#!/bin/bash

gcc -Wall -Werror -Wextra main.c -pthread -lfcgi -o server

echo 'simple server is ready to start'

spawn-fcgi -p 81 -n ./server
