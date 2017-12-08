#!/bin/bash

set -e

PWD=$(cd `dirname $0`; cd ..;pwd)
NGINX="/usr/local/openresty/nginx/sbin/nginx"

${NGINX} -c conf/nginx.conf -p ${PWD} -s stop
