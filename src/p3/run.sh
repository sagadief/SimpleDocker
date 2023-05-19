#!/bin/bash

service nginx start

gcc -Wall -Werror -Wextra main.c -pthread -lfcgi -o server

spawn-fcgi -p 8080 -n ./server
