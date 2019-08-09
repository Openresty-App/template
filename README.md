# OpenResty App Template

Let's complete a quick hands-on exercise to install OpenResty App on your machine.

## Depend

[OpenResty Homepage](http://openresty.org/en/installation.html)

* ubuntu 
  ```
  wget -qO - https://openresty.org/package/pubkey.gpg | sudo apt-key add -
  sudo apt -y install software-properties-common
  sudo add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main"

  sudo apt update
  sudo apt install -y openresty
  ```

## Run

```
git clone https://github.com/Openresty-App/template.git
cd template
./scripts/startup.sh
```

## Test

```lang=shell
[root@localhost template]# curl -i http://127.0.0.1:8080/
HTTP/1.1 200 OK
Server: openresty/1.13.6.1
Date: Fri, 08 Dec 2017 22:23:13 GMT
Content-Type: text/plain
Transfer-Encoding: chunked
Connection: keep-alive

{"message":"Hello, OpenResty"}
```

## Lua

```lang=lua
-- app
local ngx = require "ngx"
local cjson = require "cjson.safe"

local body = {message = "Hello, OpenResty"}
ngx.say(cjson.encode(body))

return ngx.exit(ngx.HTTP_OK)
```
